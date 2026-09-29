`timescale 1ns/1ps
`default_nettype none

module tb_icache;

reg clk;
reg rst_n;

reg  [31:0] cpu_addr;
reg         cpu_read_req;
wire [31:0] cpu_rdata;
wire        cpu_ready;

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

I_Cache uut(
    .clk(clk),
    .rst_n(rst_n),

    .cpu_addr(cpu_addr),
    .cpu_read_req(cpu_read_req),
    .cpu_rdata(cpu_rdata),
    .cpu_ready(cpu_ready),

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

    .awaddr(),
    .awvalid(),
    .awready(),

    .wdata(),
    .wvalid(),
    .wlast(),
    .wready(),

    .bresp(),
    .bvalid(),
    .bready()
);

initial begin
    clk = 0;
    rst_n = 0;

    cpu_addr      = 0;
    cpu_read_req  = 0;

    #50;
    rst_n = 1;
    
    #20;

    cpu_addr     = 32'h00001000;
    cpu_read_req = 1'b1;

    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
     #20;

    cpu_addr     = 32'h00003000;
    cpu_read_req = 1'b1;

    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
     #20;

    cpu_addr     = 32'h00005000;
    cpu_read_req = 1'b1;

    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
     #20;

    cpu_addr     = 32'h00007000;
    cpu_read_req = 1'b1;

    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    @(posedge clk);

    $display("READ DONE = %h", cpu_rdata);

    cpu_read_req = 0;

    #100;
    $finish;
end

always @(posedge clk) begin
    $display("================================================");

    $display("TIME=%0t", $time);

    case(uut.state)
        2'd0: $display("STATE=COMPARE");
        2'd3: $display("STATE=WAIT_BRAM");
        2'd1: $display("STATE=ALLOCATE");
        2'd2: $display("STATE=REFILL");
    endcase

    $display("cpu_read_req      = %b", cpu_read_req);  
    $display("cpu_ready    = %b", cpu_ready);
    $display("cpu_addr     = %h", cpu_addr);
    $display("cpu_rdata    = %h", cpu_rdata);

    $display("hit          = %b", uut.hit);
    $display("miss         = %b", uut.miss);
    $display("victim_way   = %d", uut.victim_way_locked);
    
    $display("DDR LINE:");
    $display("%h", mem.mem[1024]);
    $display("%h", mem.mem[1025]);
    $display("%h", mem.mem[1026]);
    $display("%h", mem.mem[1027]);

    // AR channel
    $display("--- AR ---");
    $display("ARVALID      = %b", m_axi_arvalid);
    $display("ARREADY      = %b", m_axi_arready);
    $display("ARADDR       = %h", m_axi_araddr);
    $display("AR_DONE      = %b", uut.ar_done);

    // R channel
    $display("--- R ---");
    $display("RVALID       = %b", m_axi_rvalid);
    $display("RREADY       = %b", m_axi_rready);
    $display("RDATA        = %h", m_axi_rdata);
    $display("RLAST        = %b", m_axi_rlast);

    $display("BUFFER       = %h", uut.buffer_data);
    $display("CACHE LINE 0 = %h", uut.ReadData_da0);
    $display("CACHE LINE 1 = %h", uut.ReadData_da1);
    $display("CACHE LINE 2 = %h", uut.ReadData_da2);
    $display("CACHE LINE 3 = %h", uut.ReadData_da3);
    
    $display("VALID = %b %b %b %b",
         uut.Valid_ta0,
         uut.Valid_ta1,
         uut.Valid_ta2,
         uut.Valid_ta3);

    $display("INVALID_EXIST = %b", uut.invalid_exist);
end

endmodule