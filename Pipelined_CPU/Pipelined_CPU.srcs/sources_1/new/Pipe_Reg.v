`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/23 15:06:58
// Design Name: 
// Module Name: Pipe_Reg
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


module Pipe_Reg #(parameter WIDTH = 32) // Default 32 bits
(
    input clk,
    input rst_n,
    input flush,       // Flush singal to set the register as zero when branch predict fails.
    input WE,          
    input [WIDTH-1:0] D,
    output reg [WIDTH-1:0] Q
);
    
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            Q <= {WIDTH{1'b0}};      
        end 
        else if (flush) begin
            Q <= {WIDTH{1'b0}};      // Make this register a NOP
        end 
        else if (WE) begin
            Q <= D;                  
        end
        // if flush==0 and WE==0，Q <= Q
    end
    
endmodule