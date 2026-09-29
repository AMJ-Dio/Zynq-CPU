`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/05/19 21:38:44
// Design Name: 
// Module Name: axi_mem_model
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
module axi_mem_model(
    input  wire         clk,
    input  wire         rst_n,

    // AR
    input  wire [31:0]  araddr,
    input  wire [7:0]   arlen,
    input  wire         arvalid,
    output reg          arready,

    // R
    output reg [31:0]   rdata,
    output reg [1:0]    rresp,
    output reg          rlast,
    output reg          rvalid,
    input  wire         rready,

    // AW
    input  wire [31:0]  awaddr,
    input  wire         awvalid,
    output reg          awready,

    // W
    input  wire [31:0]  wdata,
    input  wire         wvalid,
    input  wire         wlast,
    output reg          wready,

    // B
    output reg [1:0]    bresp,
    output reg          bvalid,
    input  wire         bready
);

reg [31:0] mem [0:16383];

reg [31:0] read_base;
reg [2:0]  read_cnt;
reg        reading;
reg [31:0] write_base;
reg [2:0]  write_cnt;
reg        writing;

integer i;

initial begin
    for(i=0;i<16384;i=i+1)
        mem[i] = 32'h1000_0000 + i;
        
        
//----------------------------单独测试用例：单独测试D Cache和I Cache----------------------------------
//    // 手动填充测试地址
//    mem[1024] = 32'h11111111;
//    mem[1025] = 32'h22222222;
//    mem[1026] = 32'h33333333;
//    mem[1027] = 32'h44444444;
    
//    mem[3072] = 32'h22222222;
//    mem[3073] = 32'h33333333;
//    mem[3074] = 32'h44444444;
//    mem[3075] = 32'h55555555;
    
//    mem[5120] = 32'h33333333;
//    mem[5121] = 32'h44444444;
//    mem[5122] = 32'h55555555;
//    mem[5123] = 32'h66666666;
    
//    mem[7168] = 32'h44444444;
//    mem[7169] = 32'h55555555;
//    mem[7170] = 32'h66666666;
//    mem[7171] = 32'h77777777;
    
//    mem[9216] = 32'h55555555;
//    mem[9217] = 32'h66666666;
//    mem[9218] = 32'h77777777;
//    mem[9219] = 32'h88888888;
//----------------------------单独测试用例：单独测试D Cache和I Cache----------------------------------    
    
//----------------------------Cpu with Cache测试用例----------------------------------------------------------
mem[0] = 32'h00500093;
mem[1] = 32'h00700113;
mem[2] = 32'h002081b3;
mem[3] = 32'h00302023;
mem[4] = 32'h00002203;
mem[5] = 32'h00418463;
mem[6] = 32'h06300293;
mem[7] = 32'h04200313;

//Assembly Code:
//addi x1, x0, 5
//addi x2, x0, 7
//add  x3, x1, x2
//sw   x3, 0(x0)
//lw   x4, 0(x0)
//beq  x3, x4, PASS
//addi x5, x0, 99
//PASS:
//addi x6, x0, 66
//----------------------------Cpu with Cache测试用例----------------------------------------------------------
    
    
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        arready <= 0;
        rvalid  <= 0;
        rlast   <= 0;
        rresp   <= 0;
        reading <= 0;
        read_cnt<= 0;
        write_base <= 0;
        write_cnt  <= 0;
        writing    <= 0;

        awready <= 1;
        wready  <= 1;
        bvalid  <= 0;
        bresp   <= 0;
    end
    else begin

        arready <= 1;

        if(arvalid && arready && !reading) begin
            read_base <= araddr >> 2;
            read_cnt  <= 0;
            reading   <= 1;
        end

        if(reading) begin
            if(!rvalid || (rvalid && rready)) begin
                rvalid <= 1;
                rdata  <= mem[read_base + read_cnt];
                rlast  <= (read_cnt == arlen);

                if(read_cnt == arlen) begin
                    reading <= 0;
                    read_cnt <= 0;
                end
                else begin
                    read_cnt <= read_cnt + 1;
                end
            end
        end
        else if(rvalid && rready) begin
            rvalid <= 0;
            rlast  <= 0;
        end

//        // 写回简单支持
//        if(wvalid && wready) begin
//            mem[awaddr[31:2] + read_cnt] <= wdata;
//            if(wlast)
//                bvalid <= 1;
//        end

//        if(bvalid && bready)
//            bvalid <= 0;

    // AW握手，锁存写地址
if(awvalid && awready && !writing) begin
    write_base <= awaddr >> 2;
    write_cnt  <= 0;
    writing    <= 1;
end

// W通道写数据
if(wvalid && wready && writing) begin
    mem[write_base + write_cnt] <= wdata;

    if(wlast) begin
        writing <= 0;
        write_cnt <= 0;
        bvalid <= 1;
    end
    else begin
        write_cnt <= write_cnt + 1;
    end
end

if(bvalid && bready)
    bvalid <= 0;

    end
end

endmodule
