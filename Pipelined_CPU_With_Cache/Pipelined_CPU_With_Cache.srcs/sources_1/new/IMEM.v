`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/17 10:25:44
// Design Name: 
// Module Name: IMEM
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

//IMEM
module IMEM(
    input [31:0] PC,
    input clk,
    input ena,
    output[31:0] Instruction
    );
    
    //Instantiate ROM
    ROM IMEM_Pipelined
    (
        .clka(clk),
        .addra(PC[15:2]),
        .ena(ena),
        .douta(Instruction)
    );
endmodule
