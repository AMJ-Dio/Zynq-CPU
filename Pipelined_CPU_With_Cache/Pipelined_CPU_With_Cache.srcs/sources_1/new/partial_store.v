`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 20:28:50
// Design Name: 
// Module Name: partial_store
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


module partial_store(
    input wire [2:0]  funct3,
    input wire [1:0] MemAddress_low2bits,
    input wire [31:0] DataFromReg,
    input wire MemWEn,
    output reg [31:0] DataToMem,
    output reg [3:0] MemWriteMask
    );
    
    always@(*)
    if(MemWEn)
    begin
    case(funct3)
    3'b000:
        begin
        case(MemAddress_low2bits)
            2'b00:  begin
                    DataToMem = {24'd0, DataFromReg[7:0]};
                    MemWriteMask = 4'b0001;
                    end
            2'b01:  begin
                    DataToMem = {16'd0, DataFromReg[7:0], 8'd0};
                    MemWriteMask = 4'b0010;
                    end
            2'b10:  begin
                    DataToMem = {8'd0, DataFromReg[7:0], 16'd0};
                    MemWriteMask = 4'b0100;
                    end
            2'b11:  begin
                    DataToMem = {DataFromReg[7:0], 24'd0};
                    MemWriteMask = 4'b1000;
                    end
        endcase
        end
    3'b001:
        begin
        case(MemAddress_low2bits)
            2'b00:  begin
                    DataToMem = {16'd0, DataFromReg[15:0]};
                    MemWriteMask = 4'b0011;
                    end
            2'b10:  begin
                    DataToMem = {DataFromReg[15:0], 16'd0};
                    MemWriteMask = 4'b1100;
                    end
            default:begin
                    DataToMem = 32'd0;
                    MemWriteMask = 4'b0000;
                    end
        endcase            
        end
    3'b010:
        begin
        DataToMem = DataFromReg;
        MemWriteMask = 4'b1111;
        end
    default: 
        begin
        DataToMem = 32'd0;
        MemWriteMask = 4'b0000;
        end
    endcase
    end
    
    else
        begin
        DataToMem = 32'd0;
        MemWriteMask = 4'b0000;
        end

endmodule
