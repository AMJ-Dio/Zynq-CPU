`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 10:37:57
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0]  A,         //Data to use for input A
    input [31:0]  B,         //Data to use for input B
    input [3:0]   ALUSel,    
    output reg [31:0]  ALUResult
    );
    
    reg [63:0] mul_value;
    
    always@(*)
    begin
    case(ALUSel)
        4'b0000: ALUResult = A + B;                                     //add
        4'b0001: ALUResult = A << B[4:0];                               //sll
        4'b0010: ALUResult = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0; //slt
        4'b0100: ALUResult = A ^ B;                                     //xor
        4'b0101: ALUResult = $unsigned(A) >> B[4:0];                    //srl
        4'b0110: ALUResult = A | B;                                     //or
        4'b0111: ALUResult = A & B;                                     //and
        4'b1000: ALUResult = $signed(A) * $signed(B);                   //mul
        4'b1001:                                                        //mulh
        begin
            mul_value = $signed(A) * $signed(B);
            ALUResult = mul_value[63:32];
        end
        4'b1011:                                                        //mulhu
        begin
            mul_value = $unsigned(A) * $unsigned(B);
            ALUResult = mul_value[63:32];
        end
        4'b1100: ALUResult = A - B;                                     //sub
        4'b1101: ALUResult = $signed(A) >>> B[4:0];                     //sra
        4'b1111: ALUResult = B;                                         //bsel
        default: ALUResult = 32'd0;
    endcase
    end
    
endmodule
