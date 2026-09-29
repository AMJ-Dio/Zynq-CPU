`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 12:36:12
// Design Name: 
// Module Name: Register
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


module Register(
    input wire [31:0] D,
    input wire WE,
    input wire clk,
    input wire rst_n,
    output reg [31:0] Q
    );
    
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n)Q <= 32'd0;
        else
        begin
        if(WE)Q <= D;
        else Q <= Q;
        end
    end
    
endmodule
