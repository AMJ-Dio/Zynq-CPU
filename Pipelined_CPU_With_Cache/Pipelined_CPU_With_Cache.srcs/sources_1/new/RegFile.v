`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 12:28:59
// Design Name: 
// Module Name: RegFile
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


module RegFile(
    input wire [4:0] ReadIndex1,
    input wire [4:0] ReadIndex2,
    input wire [4:0] WriteIndex,
    input wire [31:0] WriteData,
    input wire RegWEn,
    input wire clk,
    input wire rst_n,
    output wire [31:0] ReadData1,
    output wire [31:0] ReadData2
    );
    
    //Define 32 Register
    reg [31:0] reg_array [31:0];
    
    //Regfile Reset and Write Logic
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        begin: REG_RESET_BLOCK
            integer i;
            for(i=0;i<32;i=i+1)reg_array[i] <= 32'd0;
        end
        else if(RegWEn && (WriteIndex != 5'd0))reg_array[WriteIndex] <= WriteData;
    end
    
    // Read Logic: Bypass
    assign ReadData1 = (ReadIndex1 == 5'd0) ? 32'd0 : 
                       (RegWEn && (WriteIndex == ReadIndex1)) ? WriteData : 
                       reg_array[ReadIndex1];
                       
    assign ReadData2 = (ReadIndex2 == 5'd0) ? 32'd0 : 
                       (RegWEn && (WriteIndex == ReadIndex2)) ? WriteData : 
                       reg_array[ReadIndex2];
    
endmodule
