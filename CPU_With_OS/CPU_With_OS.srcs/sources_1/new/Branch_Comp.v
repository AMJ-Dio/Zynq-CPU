`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 19:12:52
// Design Name: 
// Module Name: Branch_Comp
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


module Branch_Comp(
    input [31:0] BrData1,
    input [31:0] BrData2,
    input BrUn,
    output reg BrEq,
    output reg BrLt
    );
    
    always@(*)
    begin
    case(BrUn)
        1'b0: //signed comp
            begin
            BrEq = ($signed(BrData1) == $signed(BrData2));
            BrLt = ($signed(BrData1) < $signed(BrData2));
            end
        1'b1: //unsigned comp
            begin
                BrEq = ($unsigned(BrData1) == $unsigned(BrData2));
                BrLt = ($unsigned(BrData1) < $unsigned(BrData2));
            end
        default:
            begin
                BrEq = 1'b0;
                BrLt = 1'b0;
            end
    endcase
    end
    
endmodule
