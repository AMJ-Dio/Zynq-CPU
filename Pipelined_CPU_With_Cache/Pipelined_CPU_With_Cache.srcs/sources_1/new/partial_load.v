`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/16 19:53:59
// Design Name: 
// Module Name: partial_load
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


module partial_load(
    input wire [2:0] funct3,
    input wire [1:0] MemAddress_low2bits,
    input wire [31:0] DataFromMem,
    output reg [31:0] DataToReg
    );
    
    always@(*)
    begin
    case(funct3)
        3'b000: //load byte(lb)
        begin
            case(MemAddress_low2bits)
                2'b00: DataToReg = {{24{DataFromMem[7]}},DataFromMem[7:0]};
                2'b01: DataToReg = {{24{DataFromMem[15]}},DataFromMem[15:8]};
                2'b10: DataToReg = {{24{DataFromMem[23]}},DataFromMem[23:16]};
                2'b11: DataToReg = {{24{DataFromMem[31]}},DataFromMem[31:24]};
            endcase
        end
        3'b001: //load half word(lh)
        begin
            case(MemAddress_low2bits)
                2'b00: DataToReg = {{16{DataFromMem[15]}},DataFromMem[15:0]};
                2'b01: DataToReg = {{16{DataFromMem[23]}},DataFromMem[23:8]};
                2'b10: DataToReg = {{16{DataFromMem[31]}},DataFromMem[31:16]};
                default: DataToReg = 32'd0;
            endcase
        end        
        3'b010: //load word(lw)
            DataToReg = DataFromMem;
        default:
            DataToReg = 32'd0;
    endcase
    end
    
endmodule
