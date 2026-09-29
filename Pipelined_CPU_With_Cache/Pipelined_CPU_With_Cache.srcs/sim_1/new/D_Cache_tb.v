`timescale 1ns/1ps
`default_nettype none

module tb_dcache;

reg clk;
reg rst_n;

reg  [31:0] cpu_addr;
reg  [31:0] cpu_wdata;
reg  [3:0]  cpu_wmask;
reg         cpu_read_req;
reg         cpu_write_req;
wire [31:0] cpu_rdata;
wire        cpu_ready;

// AXI
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

D_Cache uut(
    .clk(clk),
    .rst_n(rst_n),

    .cpu_addr(cpu_addr),
    .cpu_wdata(cpu_wdata),
    .cpu_wmask(cpu_wmask),
    .cpu_read_req(cpu_read_req),
    .cpu_write_req(cpu_write_req),
    .cpu_rdata(cpu_rdata),
    .cpu_ready(cpu_ready),

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

    cpu_addr      = 0;
    cpu_wdata     = 0;
    cpu_wmask     = 0;
    cpu_read_req  = 0;
    cpu_write_req = 0;

    #50;
    rst_n = 1;

//----------------------------------------------Correct read / write test-------------------------------------------------------
//    #20;

//    cpu_addr     = 32'h00001000;
//    cpu_read_req = 1'b1;

//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00001000;
//    cpu_wdata    = 32'hdeadbeef;
//    cpu_wmask    = 4'b1111;
//    cpu_read_req  = 0;
//    cpu_write_req = 1'b1;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00001000;
//    cpu_wdata    = 32'h00000000;
//    cpu_wmask    = 4'b0000;
//    cpu_read_req = 1'b1;
//    cpu_write_req = 0;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
//----------------------------------------------Correct read / write test-------------------------------------------------------

//------------------------Correct test: Read1000,3000,5000,7000, Then write1000,3000,5000,7000, Then read9000-------------------
//    #20;

//    cpu_addr     = 32'h00001000;
//    cpu_read_req = 1'b1;

//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//     #20;

//    cpu_addr     = 32'h00003000;
//    cpu_read_req = 1'b1;

//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//     #20;

//    cpu_addr     = 32'h00005000;
//    cpu_read_req = 1'b1;

//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//     #20;

//    cpu_addr     = 32'h00007000;
//    cpu_read_req = 1'b1;

//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00001000;
//    cpu_wdata    = 32'hdeadbeef;
//    cpu_wmask    = 4'b1111;
//    cpu_read_req  = 0;
//    cpu_write_req = 1'b1;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00003000;
//    cpu_wdata    = 32'haaaaaaaa;
//    cpu_wmask    = 4'b1111;
//    cpu_read_req  = 0;
//    cpu_write_req = 1'b1;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00005000;
//    cpu_wdata    = 32'hbbbbbbbb;
//    cpu_wmask    = 4'b1111;
//    cpu_read_req  = 0;
//    cpu_write_req = 1'b1;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00007000;
//    cpu_wdata    = 32'hcccccccc;
//    cpu_wmask    = 4'b1111;
//    cpu_read_req  = 0;
//    cpu_write_req = 1'b1;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);
    
//    #20;
    
//    cpu_addr     = 32'h00009000;
//    cpu_wdata    = 32'h00000000;
//    cpu_wmask    = 4'b0000;
//    cpu_read_req = 1'b1;
//    cpu_write_req = 0;
    
//    // 先确认 cache 接收到请求并 stall
//    wait(cpu_ready == 0);

//    // 再等 refill 完成
//    wait(cpu_ready == 1);

//------------------------Correct test: Read1000,3000,5000,7000, Then write1000,3000,5000,7000, Then read9000-------------------

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
    
    #20;
    
    cpu_addr     = 32'h00001000;
    cpu_wdata    = 32'hdeadbeef;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00001004;
    cpu_wdata    = 32'haaaaaaaa;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00001008;
    cpu_wdata    = 32'hbbbbbbbb;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h0000100c;
    cpu_wdata    = 32'hcccccccc;
    cpu_wmask    = 4'b0011;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00003000;
    cpu_wdata    = 32'haaaaaaaa;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00005000;
    cpu_wdata    = 32'hbbbbbbbb;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00007000;
    cpu_wdata    = 32'hcccccccc;
    cpu_wmask    = 4'b1111;
    cpu_read_req  = 0;
    cpu_write_req = 1'b1;
    
    // 先确认 cache 接收到请求并 stall
    wait(cpu_ready == 0);

    // 再等 refill 完成
    wait(cpu_ready == 1);
    
    #20;
    
    cpu_addr     = 32'h00009000;
    cpu_wdata    = 32'h00000000;
    cpu_wmask    = 4'b0000;
    cpu_read_req = 1'b1;
    cpu_write_req = 0;
    
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
        2'd1: $display("STATE=WRITE_BACK");
        2'd2: $display("STATE=ALLOCATE");
        2'd3: $display("STATE=REFILL");
    endcase

    $display("cpu_read_req      = %b", cpu_read_req);  
    $display("cpu_write_req      = %b", cpu_write_req);
    $display("cpu_ready    = %b", cpu_ready);
    $display("cpu_addr     = %h", cpu_addr);
    $display("cpu_rdata    = %h", cpu_rdata);
    $display("cpu_wdata    = %h", cpu_wdata);

    $display("tag_ready    = %b", uut.tag_ready);
    $display("hit          = %b", uut.hit);
    $display("miss         = %b", uut.miss);
    $display("victim_way   = %d", uut.victim_way_locked);
    
    $display("DDR WRITE ADDR = %h DATA = %h", m_axi_awaddr, m_axi_wdata);
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

    $display("DIRTY = %b %b %b %b",
         uut.Dirty_ta0,
         uut.Dirty_ta1,
         uut.Dirty_ta2,
         uut.Dirty_ta3);

    $display("INVALID_EXIST = %b", uut.invalid_exist);
end

endmodule