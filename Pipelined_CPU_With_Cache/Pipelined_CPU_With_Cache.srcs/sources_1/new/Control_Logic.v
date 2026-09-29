`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/17 10:56:10
// Design Name: 
// Module Name: Control_Logic
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


module Control_Logic(
    input wire [31:0] Instruction,
    output reg Is_B_Type,
    output reg Is_J_Type,
    output reg Is_Jalr,
    output reg RegWEn,
    output reg [2:0] ImmSel,
    output reg BrUn,
    output reg ASel,
    output reg BSel,
    output reg [3:0] ALUSel,
    output reg MemRW,
    output reg [1:0] WBSel
    );
    
    wire [6:0] opcode = Instruction[6:0];
    wire [2:0] funct3 = Instruction[14:12];
    wire [6:0] funct7 = Instruction[31:25];
    reg [5:0] ROM_addr;
    reg [15:0] ROM_output;
    
    //Calculate ROM Address
    always@(*)
    begin
    case(opcode)
        default:begin
                ROM_addr = 6'd0;
                end
        7'b0110011: // R type
        begin
        case(funct3)
            default: begin
                     ROM_addr = 6'd0;
                     end
            3'b000:
            begin
            case(funct7)
                default:begin
                        ROM_addr = 6'd0;
                        end
                7'b0000000: ROM_addr = 6'd0; //add rd, rs1, rs2
                7'b0000001: ROM_addr = 6'd1; //mul rd, rs1, rs2
                7'b0100000: ROM_addr = 6'd2; //sub rd, rs1, rs2
            endcase
            end
            3'b001:
            begin
            case(funct7)
                default:begin
                        ROM_addr = 6'd0;
                        end
                7'b0000000: ROM_addr = 6'd3; //sll rd, rs1, rs2
                7'b0000001: ROM_addr = 6'd4; //mulh rd, rs1, rs2
            endcase    
            end
            3'b011: ROM_addr = 6'd5; //mulhu rd, rs1, rs2
            3'b010: ROM_addr = 6'd6; //slt rd, rs1, rs2
            3'b100: ROM_addr = 6'd7; //xor rd, rs1, rs2
            3'b101: 
            begin
            case(funct7)
                default:begin
                        ROM_addr = 6'd0;
                        end
                7'b0000000: ROM_addr = 6'd8; //srl rd, rs1, rs2
                7'b0100000: ROM_addr = 6'd9; //sra rd, rs1, rs2
            endcase  
            end
            3'b110: ROM_addr = 6'd10; //or rd, rs1, rs2
            3'b111: ROM_addr = 6'd11; //and rd, rs1, rs2
        endcase
        end
        7'b0000011: // I type (load)
        begin
        case(funct3)
            default: begin
                     ROM_addr = 6'd0;
                     end
            3'b000: ROM_addr = 6'd12; //lb rd, offset(rs1)
            3'b001: ROM_addr = 6'd13; //lh rd, offset(rs1)
            3'b010: ROM_addr = 6'd14; //lw rd, offset(rs1)
        endcase
        end
        7'b0010011: // I type
        begin
        case(funct3)
            default: begin
                     ROM_addr = 6'd0;
                     end
            3'b000: ROM_addr = 6'd15; //addi rd, rs1, imm
            3'b001: ROM_addr = 6'd16; //slli rd, rs1, imm
            3'b010: ROM_addr = 6'd17; //slti rd, rs1, imm
            3'b100: ROM_addr = 6'd18; //xori rd, rs1, imm
            3'b101: 
            begin
            case(funct7)
                default:begin
                        ROM_addr = 6'd0;
                        end
                7'b0000000: ROM_addr = 6'd19; //srli rd, rs1, imm
                7'b0100000: ROM_addr = 6'd20; //srai rd, rs1, imm
            endcase
            end
            3'b110: ROM_addr = 6'd21; //ori rd, rs1, imm
            3'b111: ROM_addr = 6'd22; //andi rd, rs1, imm
        endcase
        end
        7'b0100011: // S type
        begin
        case(funct3)
            default: begin
                     ROM_addr = 6'd0;
                     end
            3'b000: ROM_addr = 6'd23; //sb rs2, offset(rs1)
            3'b001: ROM_addr = 6'd24; //sh rs2, offset(rs1)
            3'b010: ROM_addr = 6'd25; //sw rs2, offset(rs1)
        endcase
        end
        7'b1100011: // B type
        begin
        case(funct3)
            default: begin
                     ROM_addr = 6'd0;
                     end
            3'b000: begin //beq rs1, rs2, offset
                    ROM_addr = 6'd26;
                    end
            3'b001: begin //bne rs1, rs2, offset
                    ROM_addr = 6'd27;
                    end
            3'b100: begin //blt rs1, rs2, offset
                    ROM_addr = 6'd28;
                    end
            3'b101: begin //bge rs1, rs2, offset
                    ROM_addr = 6'd29;
                    end
            3'b110: begin //bltu rs1, rs2, offset
                    ROM_addr = 6'd30;
                    end
            3'b111: begin //bgeu rs1, rs2, offset
                    ROM_addr = 6'd31;
                    end
        endcase
        end
        7'b0010111: // U type (auipc)
            begin
            ROM_addr = 6'd32;
            end
        7'b0110111: // U type (lui)
            begin
            ROM_addr = 6'd33;
            end
        7'b1101111: // J type (jal)
            begin
            ROM_addr = 6'd34;
            end
        7'b1100111: // I type (jalr)
            begin
            ROM_addr = 6'd35;
            end
    endcase
    
    if(opcode == 7'b1100011)Is_B_Type = 1'b1;
    else Is_B_Type = 1'b0;
    
    if(opcode == 7'b1101111)Is_J_Type = 1'b1;
    else Is_J_Type = 1'b0;
    
    if(opcode == 7'b1100111)Is_Jalr = 1'b1;
    else Is_Jalr = 1'b0;
    
    end
    
    
    //Get Control Logic Bits from ROM
    always@(*)
    begin
        WBSel = ROM_output[13:12];
        MemRW = ROM_output[11];
        ALUSel= ROM_output[10:7];
        BSel  = ROM_output[6];
        ASel  = ROM_output[5];
        BrUn  = ROM_output[4];
        ImmSel= ROM_output[3:1];
        RegWEn= ROM_output[0];
    end
    
    //Handwrite a ROM
    always@(*)
    begin
    case(ROM_addr)
        6'd0: ROM_output = 16'h1001;
        6'd1: ROM_output = 16'h1401;
        6'd2: ROM_output = 16'h1601;
        6'd3: ROM_output = 16'h1081;
        6'd4: ROM_output = 16'h1481;
        6'd5: ROM_output = 16'h1581;
        6'd6: ROM_output = 16'h1101;
        6'd7: ROM_output = 16'h1201;
        6'd8: ROM_output = 16'h1281;
        6'd9: ROM_output = 16'h1681;
        6'd10: ROM_output = 16'h1301;
        6'd11: ROM_output = 16'h1381;
        6'd12: ROM_output = 16'h0041;
        6'd13: ROM_output = 16'h0041;
        6'd14: ROM_output = 16'h0041;
        6'd15: ROM_output = 16'h1041;
        6'd16: ROM_output = 16'h10C1;
        6'd17: ROM_output = 16'h1141;
        6'd18: ROM_output = 16'h1241;
        6'd19: ROM_output = 16'h12C1;
        6'd20: ROM_output = 16'h16C1;
        6'd21: ROM_output = 16'h1341;
        6'd22: ROM_output = 16'h13C1;
        6'd23: ROM_output = 16'h0842;
        6'd24: ROM_output = 16'h0842;
        6'd25: ROM_output = 16'h0842;
        6'd26: ROM_output = 16'h0064;
        6'd27: ROM_output = 16'h0064;
        6'd28: ROM_output = 16'h0064;
        6'd29: ROM_output = 16'h0064;
        6'd30: ROM_output = 16'h0074;
        6'd31: ROM_output = 16'h0074;
        6'd32: ROM_output = 16'h1067;
        6'd33: ROM_output = 16'h17C7;
        6'd34: ROM_output = 16'h2069;
        6'd35: ROM_output = 16'h2041;
        default: ROM_output = 16'h0000;
    endcase    
    end
    
endmodule
