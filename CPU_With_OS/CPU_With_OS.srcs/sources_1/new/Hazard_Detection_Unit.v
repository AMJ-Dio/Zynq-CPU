`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/23 14:32:17
// Design Name: 
// Module Name: Hazard_Detection_Unit
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


module Hazard_Detection_Unit(
    input wire [4:0] rs1_ID,
    input wire [4:0] rs2_ID,
    input wire [4:0] rd_EX,
    input wire MEMReadEn_EX,   //Detect if inst_EX is a LOAD instruction (Using Opcode)
    output reg PC_Write,      //Frozen PC
    output reg IF_ID_Write,   //Frozen Register between IF stage and ID stage
    output reg Control_Stall //Signal to set RegWEn, MEM_RW_En, PCSel(avoid branch) to zero
    );
    
    always@(*)
    begin
        if(MEMReadEn_EX && ((rd_EX == rs1_ID) || (rd_EX == rs2_ID)) && (rd_EX != 5'd0))
        begin
            PC_Write = 1'd0;
            IF_ID_Write = 1'd0;
            Control_Stall = 1'd1;
        end
        else 
        begin
            PC_Write = 1'd1;
            IF_ID_Write = 1'd1;
            Control_Stall = 1'd0;
        end
    end
    
endmodule
