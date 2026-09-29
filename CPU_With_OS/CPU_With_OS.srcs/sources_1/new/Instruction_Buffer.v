`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/21 10:33:02
// Design Name: 
// Module Name: Instruction_Buffer
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

`default_nettype none
module Instruction_Buffer(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        stall,
    input  wire [31:0] raw_i_cache_data,
    output reg         use_buffer,
    output reg  [31:0] stall_buffer_inst
    );
    
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n) begin
            use_buffer <= 0;
            stall_buffer_inst <= 0;
        end
        else if(stall && !use_buffer) begin
            stall_buffer_inst <= raw_i_cache_data;
            use_buffer <= 1'b1;
        end
        else if(!stall) begin
            use_buffer <= 0;
        end
    end
    
endmodule
