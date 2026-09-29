`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/31 08:49:25
// Design Name: 
// Module Name: Branch_Taken_Delay
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


module Branch_Taken_Delay(
    input wire  clk,
    input wire  rst_n,
    input wire  Branch_Taken,
    output reg Branch_Taken_Delay
    );
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) Branch_Taken_Delay <= 1'b0;
        else Branch_Taken_Delay <= Branch_Taken;
    end
    
endmodule
