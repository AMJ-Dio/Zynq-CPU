`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/20 15:55:59
// Design Name: 
// Module Name: Soc_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`default_nettype none
module SoC_Top (
    // =========================================================
    // 1. Zynq 专属物理引脚：必须原封不动地暴露给外界！
    // =========================================================
    inout  wire [14:0] DDR_0_addr,
    inout  wire [2:0]  DDR_0_ba,
    inout  wire        DDR_0_cas_n,
    inout  wire        DDR_0_ck_n,
    inout  wire        DDR_0_ck_p,
    inout  wire        DDR_0_cke,
    inout  wire        DDR_0_cs_n,
    inout  wire [3:0]  DDR_0_dm,
    inout  wire [31:0] DDR_0_dq,
    inout  wire [3:0]  DDR_0_dqs_n,
    inout  wire [3:0]  DDR_0_dqs_p,
    inout  wire        DDR_0_odt,
    inout  wire        DDR_0_ras_n,
    inout  wire        DDR_0_reset_n,
    inout  wire        DDR_0_we_n,
    
    inout  wire        FIXED_IO_0_ddr_vrn,
    inout  wire        FIXED_IO_0_ddr_vrp,
    inout  wire [53:0] FIXED_IO_0_mio,
    inout  wire        FIXED_IO_0_ps_clk,
    inout  wire        FIXED_IO_0_ps_porb,
    inout  wire        FIXED_IO_0_ps_srstb
);

    // =========================================================
    // 2. 内部全局网络 (时钟与复位)
    // =========================================================
    wire clk_50m;
    wire rst_n;

    // =========================================================
    // 3. AXI4 总线内部接线 (只声明用到的核心通道)
    // =========================================================
    wire [31:0] axi_awaddr;
    wire [7:0]  axi_awlen;
    wire [2:0]  axi_awsize;
    wire [1:0]  axi_awburst;
    wire        axi_awvalid;
    wire        axi_awready;

    wire [31:0] axi_wdata;
    wire [3:0]  axi_wstrb;
    wire        axi_wlast;
    wire        axi_wvalid;
    wire        axi_wready;

    wire [1:0]  axi_bresp;
    wire        axi_bvalid;
    wire        axi_bready;

    wire [31:0] axi_araddr;
    wire [7:0]  axi_arlen;
    wire [2:0]  axi_arsize;
    wire [1:0]  axi_arburst;
    wire        axi_arvalid;
    wire        axi_arready;

    wire [31:0] axi_rdata;
    wire [1:0]  axi_rresp;
    wire        axi_rlast;
    wire        axi_rvalid;
    wire        axi_rready;

    // =========================================================
    // 4. 例化你的 RISC-V 核心 (假设 Cache 已经封在里面了)
    // =========================================================
    Pipelined_CPU u_cpu (
        .clk            (clk_50m),     // 接 Zynq 发来的时钟
        .rst_n          (rst_n),       // 接 Zynq 发来的复位
        
        // AXI AW 通道
        .m_axi_awaddr   (axi_awaddr),
        .m_axi_awlen    (axi_awlen),
        .m_axi_awsize   (axi_awsize),
        .m_axi_awburst  (axi_awburst),
        .m_axi_awvalid  (axi_awvalid),
        .m_axi_awready  (axi_awready),
        // AXI W 通道
        .m_axi_wdata    (axi_wdata),
        .m_axi_wstrb    (axi_wstrb),
        .m_axi_wlast    (axi_wlast),
        .m_axi_wvalid   (axi_wvalid),
        .m_axi_wready   (axi_wready),
        // AXI B 通道
        .m_axi_bresp    (axi_bresp),
        .m_axi_bvalid   (axi_bvalid),
        .m_axi_bready   (axi_bready),
        // AXI AR 通道
        .m_axi_araddr   (axi_araddr),
        .m_axi_arlen    (axi_arlen),
        .m_axi_arsize   (axi_arsize),
        .m_axi_arburst  (axi_arburst),
        .m_axi_arvalid  (axi_arvalid),
        .m_axi_arready  (axi_arready),
        // AXI R 通道
        .m_axi_rdata    (axi_rdata),
        .m_axi_rresp    (axi_rresp),
        .m_axi_rlast    (axi_rlast),
        .m_axi_rvalid   (axi_rvalid),
        .m_axi_rready   (axi_rready)
    );

    // =========================================================
    // 5. 例化 Zynq 主板 (Block Design Wrapper)
    // =========================================================
    DDR3_AXI4 u_zynq_soc (
        // --- 物理引脚直通外壳 ---
        .DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
    
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),

        // --- 时钟与复位生成与回环 ---
        .FCLK_CLK0_0          (clk_50m), // Zynq 产出 50MHz 时钟
        .axi_hp_clk           (clk_50m), // 喂给 AXI 接口的时钟
        .peripheral_aresetn_0 (rst_n),   // Zynq 产出复位信号

        // --- 核心 AXI 连线 ---
        .S00_AXI_0_awaddr     (axi_awaddr),
        .S00_AXI_0_awlen      (axi_awlen),
        .S00_AXI_0_awsize     (axi_awsize),
        .S00_AXI_0_awburst    (axi_awburst),
        .S00_AXI_0_awvalid    (axi_awvalid),
        .S00_AXI_0_awready    (axi_awready),
        
        .S00_AXI_0_wdata      (axi_wdata),
        .S00_AXI_0_wstrb      (axi_wstrb),
        .S00_AXI_0_wlast      (axi_wlast),
        .S00_AXI_0_wvalid     (axi_wvalid),
        .S00_AXI_0_wready     (axi_wready),

        .S00_AXI_0_bresp      (axi_bresp),
        .S00_AXI_0_bvalid     (axi_bvalid),
        .S00_AXI_0_bready     (axi_bready),

        .S00_AXI_0_araddr     (axi_araddr),
        .S00_AXI_0_arlen      (axi_arlen),
        .S00_AXI_0_arsize     (axi_arsize),
        .S00_AXI_0_arburst    (axi_arburst),
        .S00_AXI_0_arvalid    (axi_arvalid),
        .S00_AXI_0_arready    (axi_arready),

        .S00_AXI_0_rdata      (axi_rdata),
        .S00_AXI_0_rresp      (axi_rresp),
        .S00_AXI_0_rlast      (axi_rlast),
        .S00_AXI_0_rvalid     (axi_rvalid),
        .S00_AXI_0_rready     (axi_rready),

        // --- 没用到的 AXI 冗余信号 ---
        // AXI 协议规定，没用到的 input 必须置 0，没用到的 output 悬空不管。
        .S00_AXI_0_awid       (6'd0),
        .S00_AXI_0_awlock     (1'b0),
        .S00_AXI_0_awcache    (4'b0011), // 默认的 Bufferable 属性
        .S00_AXI_0_awprot     (3'd0),
        .S00_AXI_0_awqos      (4'd0),
        .S00_AXI_0_awregion   (4'd0),
        
        .S00_AXI_0_arid       (6'd0),
        .S00_AXI_0_arlock     (1'b0),
        .S00_AXI_0_arcache    (4'b0011),
        .S00_AXI_0_arprot     (3'd0),
        .S00_AXI_0_arqos      (4'd0),
        .S00_AXI_0_arregion   (4'd0),

        // 这些是 output，我们没用，所以留空 ()
        .S00_AXI_0_bid        (),
        .S00_AXI_0_rid        ()
    );

endmodule
