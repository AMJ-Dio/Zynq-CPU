`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 16:57:04
// Design Name: 
// Module Name: Imm_gen
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


module Imm_gen(
    input wire [31:0] Instruction,
    input wire [2:0] ImmSel,
    output reg [31:0] Immediate
    );
    
    always@(*)
    begin
    case(ImmSel)    
        3'b000: //I type
            Immediate = {{20{Instruction[31]}}, Instruction[31:20]};
        3'b001: //S type
            Immediate = {{20{Instruction[31]}}, Instruction[31:25], Instruction[11:7]};
        3'b010: //B type
            Immediate = {{20{Instruction[31]}}, Instruction[7], Instruction[30:25], Instruction[11:8], 1'b0};
        3'b011: //U type
            Immediate = {Instruction[31:12], 12'd0};
        3'b100: //J type
            Immediate = {{12{Instruction[31]}}, Instruction[19:12], Instruction[20], Instruction[30:21], 1'b0};
        default: Immediate = 32'd0;
    endcase
    end
    
endmodule
