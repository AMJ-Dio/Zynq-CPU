`timescale 1ns/1ps
`default_nettype none

module tb_cpu_with_cache;

reg clk;
reg rst_n;

wire [31:0] m_axi_awaddr;
wire [7:0]  m_axi_awlen;
wire [2:0]  m_axi_awsize;
wire [1:0]  m_axi_awburst;
wire        m_axi_awvalid;
wire        m_axi_awready;

wire [31:0] m_axi_wdata;
wire [3:0]  m_axi_wstrb;
wire        m_axi_wlast;
wire        m_axi_wvalid;
wire        m_axi_wready;

wire [1:0]  m_axi_bresp;
wire        m_axi_bvalid;
wire        m_axi_bready;

wire [31:0] m_axi_araddr;
wire [7:0]  m_axi_arlen;
wire [2:0]  m_axi_arsize;
wire [1:0]  m_axi_arburst;
wire        m_axi_arvalid;
wire        m_axi_arready;

wire [31:0] m_axi_rdata;
wire [1:0]  m_axi_rresp;
wire        m_axi_rlast;
wire        m_axi_rvalid;
wire        m_axi_rready;

always #5 clk = ~clk;

Pipelined_CPU uut(
    .clk(clk),
    .rst_n(rst_n),

    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),

    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),

    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),

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

axi_mem_model mem(
    .clk(clk),
    .rst_n(rst_n),

    .araddr(m_axi_araddr),
    .arlen(m_axi_arlen),
    .arvalid(m_axi_arvalid),
    .arready(m_axi_arready),

    .rdata(m_axi_rdata),
    .rresp(m_axi_rresp),
    .rlast(m_axi_rlast),
    .rvalid(m_axi_rvalid),
    .rready(m_axi_rready),

    .awaddr(m_axi_awaddr),
    .awvalid(m_axi_awvalid),
    .awready(m_axi_awready),

    .wdata(m_axi_wdata),
    .wvalid(m_axi_wvalid),
    .wlast(m_axi_wlast),
    .wready(m_axi_wready),

    .bresp(m_axi_bresp),
    .bvalid(m_axi_bvalid),
    .bready(m_axi_bready)
);

initial begin
    clk = 0;
    rst_n = 0;

    #100;
    rst_n = 1;

    #3000;

    $display("=================================");
    $display("x1 = %h", uut.RegFile_single.reg_array[1]);
    $display("x2 = %h", uut.RegFile_single.reg_array[2]);
    $display("x3 = %h", uut.RegFile_single.reg_array[3]);
    $display("x4 = %h", uut.RegFile_single.reg_array[4]);
    $display("x5 = %h", uut.RegFile_single.reg_array[5]);
    $display("x6 = %h", uut.RegFile_single.reg_array[6]);
    $display("MEM[0] = %h", mem.mem[0]);

    $finish;
end

always @(posedge clk) begin
    $display("=================================");
    $display("TIME=%0t", $time);
    $display("PC=%h", uut.Program_Counter);
    $display("INST=%h", uut.Instruction);
    $display("cpu_ready_I=%b", uut.cpu_ready_I);
    $display("cpu_ready_D=%b", uut.cpu_ready_D);
    $display("ARVALID=%b", m_axi_arvalid);
    $display("ARADDR=%h", m_axi_araddr);
    $display("RVALID=%b", m_axi_rvalid);
    $display("RDATA=%h", m_axi_rdata);
    $display("MEM_STAGE_INST = %h", uut.PipeReg3_Out[48:17]);
end

endmodule