`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/21 10:48:22
// Design Name: 
// Module Name: AXI_Arbiter
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

//This is a Round-Robin Arbiter with AXI4
module AXI_Arbiter(
    input   wire         clk,
    input   wire         rst_n,
    
    //---------------------------I Cache Input/Output---------------------------------------

    //  读地址通道 (Read Address Channel - AR)
    input   wire [31:0]  m_axi_araddr_IC,   // 请求读新块的物理地址
    input   wire         m_axi_arvalid_IC,  // AR 通道握手
    output  wire         m_axi_arready_IC,  // AR 通道握手

    //  读数据通道 (Read Data Channel - R)
    output  wire [31:0]  m_axi_rdata_IC,    // DDR3 传回来的数据
    output  wire [1:0]   m_axi_rresp_IC,    // 读响应状态
    output  wire         m_axi_rlast_IC,    // 读突发的最后一次标志
    output  wire         m_axi_rvalid_IC,   // R 通道握手
    input   wire         m_axi_rready_IC,   // R 通道握手
    
    //----------------------------D Cache Input/Output---------------------------------------
    //  读地址通道 (Read Address Channel - AR)
    input   wire [31:0]  m_axi_araddr_DC,   // 请求读新块的物理地址
    input   wire         m_axi_arvalid_DC,  // AR 通道握手
    output  wire         m_axi_arready_DC,  // AR 通道握手

    //  读数据通道 (Read Data Channel - R)
    output  wire [31:0]  m_axi_rdata_DC,    // DDR3 传回来的数据
    output  wire [1:0]   m_axi_rresp_DC,    // 读响应状态
    output  wire         m_axi_rlast_DC,    // 读突发的最后一次标志
    output  wire         m_axi_rvalid_DC,   // R 通道握手
    input   wire         m_axi_rready_DC,    // R 通道握手
    
    //----------------------------AXI---------------------------------------
    // 读地址通道 (Read Address Channel - AR)
    output  wire [31:0]  m_axi_araddr,   // 请求读新块的物理地址
    output  wire [7:0]   m_axi_arlen,    //  突发长度 (8'd3 代表读4次)
    output  wire [2:0]   m_axi_arsize,   // 每次传输大小 (3'b010 代表 4 Bytes)
    output  wire [1:0]   m_axi_arburst,  // 突发类型 (2'b01 代表 INCR)
    output  wire         m_axi_arvalid,  // AR 通道握手
    input   wire         m_axi_arready,  // AR 通道握手

    // 读数据通道 (Read Data Channel - R)
    input   wire [31:0]  m_axi_rdata,    // DDR3 传回来的数据
    input   wire [1:0]   m_axi_rresp,    // 读响应状态
    input   wire         m_axi_rlast,    // 读突发的最后一次标志
    input   wire         m_axi_rvalid,   // R 通道握手
    output  wire         m_axi_rready    // R 通道握手
    );
    
    localparam IDLE = 1'd0;
    localparam BUSY = 1'd1;
    wire i_cache_req = m_axi_arvalid_IC;
    wire d_cache_req = m_axi_arvalid_DC;
    wire double_req = i_cache_req && d_cache_req;
    reg state;
    reg next_state;
    
    // AXI4 Constants
    localparam [7:0] AXI_BURST_LEN  = 8'd3;   // Burst Length = 4次 (0~3)
    assign m_axi_arlen = AXI_BURST_LEN;
    localparam [2:0] AXI_BURST_SIZE = 3'b010; // 每次传输 4 Bytes (32 bits)
    assign m_axi_arsize = AXI_BURST_SIZE;
    localparam [1:0] AXI_BURST_TYPE = 2'b01;  // INCR (地址递增模式)
    assign m_axi_arburst = AXI_BURST_TYPE;
    
    //----------------------------Arbiter Logic-------------------------------
    reg grant;
    wire grant_next;
    wire current_grant;
    
    assign grant_next = (double_req)  ? ~grant :
                        (i_cache_req) ? 1'b0 :
                        (d_cache_req) ? 1'b1 : grant ;
                        
    assign current_grant = (state == IDLE) ? grant_next : grant;                    
    //------------------------Finite State Machine----------------------------  
    always@(*) begin
        case(state)
            IDLE: begin
                  if(i_cache_req || d_cache_req) next_state = BUSY;
                  else next_state = IDLE;
                  end
            BUSY: begin
                  if(m_axi_rvalid && m_axi_rready && m_axi_rlast) //last handshake
                      next_state = IDLE;
                  else 
                      next_state = BUSY;
                  end
            default: next_state = IDLE;
        endcase
    end
    
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            grant     <= 1'b0;
            state     <= IDLE;
        end else begin
            state <= next_state;
            if (state == IDLE && (i_cache_req || d_cache_req)) begin
                grant     <= grant_next;
            end
        end
    end
    
    //---------------------------------Logic Design---------------------------------------  
    // 1. AR 通道 (主 -> 从)
    assign m_axi_araddr  = (current_grant == 1'b0) ? m_axi_araddr_IC  : m_axi_araddr_DC;
    assign m_axi_arvalid = (current_grant == 1'b0) ? m_axi_arvalid_IC : m_axi_arvalid_DC;
    
    // 2. AR 通道反向 (从 -> 主)
    assign m_axi_arready_IC = (current_grant == 1'b0) ? m_axi_arready : 1'b0;
    assign m_axi_arready_DC = (current_grant == 1'b1) ? m_axi_arready : 1'b0;

    // 3. R 通道 (从 -> 主)
    assign m_axi_rdata_IC = (current_grant == 1'b0) ? m_axi_rdata : 32'd0;
    assign m_axi_rdata_DC = (current_grant == 1'b1) ? m_axi_rdata : 32'd0;
    
    assign m_axi_rresp_IC = (current_grant == 1'b0) ? m_axi_rresp : 2'd0;
    assign m_axi_rresp_DC = (current_grant == 1'b1) ? m_axi_rresp : 2'd0;
    
    assign m_axi_rlast_IC = (current_grant == 1'b0) ? m_axi_rlast : 1'b0;
    assign m_axi_rlast_DC = (current_grant == 1'b1) ? m_axi_rlast : 1'b0;
    
    assign m_axi_rvalid_IC = (current_grant == 1'b0) ? m_axi_rvalid : 1'b0;
    assign m_axi_rvalid_DC = (current_grant == 1'b1) ? m_axi_rvalid : 1'b0;

    // 4. R 通道反向 (主 -> 从)
    assign m_axi_rready = (current_grant == 1'b0) ? m_axi_rready_IC : m_axi_rready_DC;
    
endmodule
