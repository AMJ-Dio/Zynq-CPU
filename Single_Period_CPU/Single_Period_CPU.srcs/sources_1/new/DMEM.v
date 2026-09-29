`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/17 10:25:10
// Design Name: 
// Module Name: DMEM
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


////DMEM use Memory[32767:16384]
//module DMEM(
//    input [31:0] MemAddress,
//    input [3:0]  MemWriteMask,
//    input [31:0] MemWriteData,
//    input clk,
//    output[31:0] MemReadData 
//    );
    
//    //Instantiate Memory
//    Memory D_MEM
//    (
//        .clka(clk),
//        .wea(MemWriteMask),
//        .addra(MemAddress),
//        .dina(MemWriteData),
//        .clkb(clk),
//        .addrb(MemAddress),
//        .doutb(MemReadData)
//    );
//endmodule

module DMEM(
    input [31:0] MemAddress,
    input [3:0]  MemWriteMask,
    input [31:0] MemWriteData,
    input clk,
    output[31:0] MemReadData 
    );
    
    // 定义 1024 个 32-bit 的数据内存 (4KB)
    reg [31:0] dmem_array [0:1023];
    
    // 异步读：地址变，数据立刻出
    assign MemReadData = dmem_array[MemAddress[11:2]];
    
    // 同步写：必须在时钟边沿，并且根据掩码写入
    always@(posedge clk) begin
        if (MemWriteMask[0]) dmem_array[MemAddress[11:2]][7:0]   <= MemWriteData[7:0];
        if (MemWriteMask[1]) dmem_array[MemAddress[11:2]][15:8]  <= MemWriteData[15:8];
        if (MemWriteMask[2]) dmem_array[MemAddress[11:2]][23:16] <= MemWriteData[23:16];
        if (MemWriteMask[3]) dmem_array[MemAddress[11:2]][31:24] <= MemWriteData[31:24];
    end
endmodule