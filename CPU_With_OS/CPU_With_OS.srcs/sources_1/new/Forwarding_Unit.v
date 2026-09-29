`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/23 12:55:13
// Design Name: 
// Module Name: Forwarding_Unit
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


module Forwarding_Unit(
    input [4:0] rs1_EX,
    input [4:0] rs2_EX,
    input [4:0] rd_MEM,
    input RegWEn_MEM,
    input [4:0] rd_WB,
    input RegWEn_WB,
    input [31:0] RegReadData1,
    input [31:0] RegReadData2,
    input [31:0] ALUResult,
    input [31:0] WB_Data,
    output reg[31:0] ALUData1,
    output reg[31:0] ALUData2
    );
    
    always@(*)
    begin
        if(RegWEn_MEM && (rd_MEM == rs1_EX) && (rd_MEM != 5'd0))ALUData1 = ALUResult;
        else if(RegWEn_WB && (rd_WB == rs1_EX) && (rd_WB != 5'd0))ALUData1 = WB_Data;
        else ALUData1 = RegReadData1;
        
        if(RegWEn_MEM && (rd_MEM == rs2_EX) && (rd_MEM != 5'd0))ALUData2 = ALUResult;
        else if(RegWEn_WB && (rd_WB == rs2_EX) && (rd_WB != 5'd0))ALUData2 = WB_Data;
        else ALUData2 = RegReadData2;
    
    end
    
endmodule
