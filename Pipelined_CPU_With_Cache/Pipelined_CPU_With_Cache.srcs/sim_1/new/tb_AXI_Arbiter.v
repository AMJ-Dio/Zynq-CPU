`timescale 1ns/1ps
`default_nettype none

module tb_axi_arbiter;

reg clk;
reg rst_n;

always #5 clk = ~clk;

// ======================================================
// IC side
// ======================================================
reg  [31:0] m_axi_araddr_IC;
reg         m_axi_arvalid_IC;
wire        m_axi_arready_IC;

wire [31:0] m_axi_rdata_IC;
wire [1:0]  m_axi_rresp_IC;
wire        m_axi_rlast_IC;
wire        m_axi_rvalid_IC;
reg         m_axi_rready_IC;

// ======================================================
// DC side
// ======================================================
reg  [31:0] m_axi_araddr_DC;
reg         m_axi_arvalid_DC;
wire        m_axi_arready_DC;

wire [31:0] m_axi_rdata_DC;
wire [1:0]  m_axi_rresp_DC;
wire        m_axi_rlast_DC;
wire        m_axi_rvalid_DC;
reg         m_axi_rready_DC;

// ======================================================
// Shared AXI slave side (fake DDR)
// ======================================================
wire [31:0] m_axi_araddr;
wire [7:0]  m_axi_arlen;
wire [2:0]  m_axi_arsize;
wire [1:0]  m_axi_arburst;
wire        m_axi_arvalid;
reg         m_axi_arready;

reg  [31:0] m_axi_rdata;
reg  [1:0]  m_axi_rresp;
reg         m_axi_rlast;
reg         m_axi_rvalid;
wire        m_axi_rready;

// ======================================================
// DUT
// ======================================================
AXI_Arbiter uut(
    .clk(clk),
    .rst_n(rst_n),

    .m_axi_araddr_IC(m_axi_araddr_IC),
    .m_axi_arvalid_IC(m_axi_arvalid_IC),
    .m_axi_arready_IC(m_axi_arready_IC),

    .m_axi_rdata_IC(m_axi_rdata_IC),
    .m_axi_rresp_IC(m_axi_rresp_IC),
    .m_axi_rlast_IC(m_axi_rlast_IC),
    .m_axi_rvalid_IC(m_axi_rvalid_IC),
    .m_axi_rready_IC(m_axi_rready_IC),

    .m_axi_araddr_DC(m_axi_araddr_DC),
    .m_axi_arvalid_DC(m_axi_arvalid_DC),
    .m_axi_arready_DC(m_axi_arready_DC),

    .m_axi_rdata_DC(m_axi_rdata_DC),
    .m_axi_rresp_DC(m_axi_rresp_DC),
    .m_axi_rlast_DC(m_axi_rlast_DC),
    .m_axi_rvalid_DC(m_axi_rvalid_DC),
    .m_axi_rready_DC(m_axi_rready_DC),

    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),

    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
);

// ======================================================
// Fake DDR responder
// ======================================================
integer beat_cnt;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        beat_cnt     <= 0;
        m_axi_rvalid <= 0;
        m_axi_rlast  <= 0;
        m_axi_rdata  <= 0;
        m_axi_rresp  <= 0;
    end
    else begin

        if(m_axi_arvalid && m_axi_arready) begin
            beat_cnt     <= 0;
            m_axi_rvalid <= 1;
            m_axi_rlast  <= 0;
        end
        else if(m_axi_rvalid && m_axi_rready) begin

            beat_cnt <= beat_cnt + 1;
            m_axi_rdata <= m_axi_araddr + beat_cnt * 4;

            if(beat_cnt == 3) begin
                m_axi_rlast  <= 1;
            end

            if(beat_cnt == 4) begin
                m_axi_rvalid <= 0;
                m_axi_rlast  <= 0;
            end
        end
    end
end

// ======================================================
// stimulus
// ======================================================
initial begin
    clk = 0;
    rst_n = 0;

    m_axi_araddr_IC  = 0;
    m_axi_arvalid_IC = 0;
    m_axi_rready_IC  = 1;

    m_axi_araddr_DC  = 0;
    m_axi_arvalid_DC = 0;
    m_axi_rready_DC  = 1;

    m_axi_arready    = 1;

    m_axi_rdata      = 0;
    m_axi_rresp      = 0;
    m_axi_rlast      = 0;
    m_axi_rvalid     = 0;

    #50;
    rst_n = 1;

    // ==========================================
    // TEST 1 simultaneous request
    // ==========================================
    #20;

    m_axi_araddr_IC  = 32'h00001000;
    m_axi_arvalid_IC = 1;

    m_axi_araddr_DC  = 32'h00002000;
    m_axi_arvalid_DC = 1;

    wait(m_axi_arready_IC || m_axi_arready_DC);

    @(posedge clk);
    m_axi_arvalid_IC = 0;
    m_axi_arvalid_DC = 0;

    // ==========================================
    // TEST 2 second round
    // ==========================================
    wait(m_axi_rlast && m_axi_rvalid && m_axi_rready);
    @(posedge clk);

    m_axi_araddr_IC  = 32'h00003000;
    m_axi_arvalid_IC = 1;

    m_axi_araddr_DC  = 32'h00004000;
    m_axi_arvalid_DC = 1;

    wait(m_axi_arready_IC || m_axi_arready_DC);

    @(posedge clk);
    m_axi_arvalid_IC = 0;
    m_axi_arvalid_DC = 0;

    #300;
    $finish;
end

// ======================================================
// monitor
// ======================================================
always @(posedge clk) begin

    $display("================================================");
    $display("TIME=%0t", $time);

    $display("STATE        = %d", uut.state);
    $display("GRANT        = %d", uut.grant);
    $display("CURRENT      = %d", uut.current_grant);

    $display("IC_REQ       = %b", m_axi_arvalid_IC);
    $display("DC_REQ       = %b", m_axi_arvalid_DC);

    $display("ARVALID      = %b", m_axi_arvalid);
    $display("ARREADY      = %b", m_axi_arready);
    $display("ARADDR       = %h", m_axi_araddr);

    $display("RVALID       = %b", m_axi_rvalid);
    $display("RREADY       = %b", m_axi_rready);
    $display("RDATA        = %h", m_axi_rdata);
    $display("RLAST        = %b", m_axi_rlast);

    $display("IC_RVALID    = %b", m_axi_rvalid_IC);
    $display("DC_RVALID    = %b", m_axi_rvalid_DC);
end

endmodule