`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/31 08:59:08
// Design Name: 
// Module Name: PC_Sel
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


module PC(
    input wire         clk,
    input wire        rst_n,
    input wire        PC_Write,
    input wire [6:0]  opcode_s2,
    input wire [2:0]  funct3_s2,
    input wire [31:0] ALUResult,
    output wire  [31:0] Program_Counter,
    input wire        PCSel
    );
    
    reg [31:0] Updated_PC;
    
    Register Prog_Count
    (
        .D(Updated_PC),
        .WE(PC_Write),
        .clk(clk),
        .rst_n(rst_n),
        .Q(Program_Counter)
    );
    
    always@(*)
    begin
        if(!PCSel)
             Updated_PC = Program_Counter + 4;
        else begin
             if(opcode_s2 == 7'b1100111 && funct3_s2 == 3'b000) //jalr
                Updated_PC = {ALUResult[31:1], 1'b0};   
             else Updated_PC = ALUResult;
             end
    end
    
endmodule
