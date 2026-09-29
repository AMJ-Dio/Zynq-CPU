`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/18 00:44:15
// Design Name: 
// Module Name: Single_Period_CPU
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


module Single_Period_CPU(
    input clk,
    input rst_n
    );
    
    //Enable/Not Enable signal
    wire Enable = 1'b1;
    
    //Instantiate Control_Logic
    wire [31:0] Instruction;
    wire BrEq;
    wire BrLt;
    wire PCSel;
    wire RegWEn;
    wire [2:0] ImmSel;
    wire BrUn;
    wire ASel;
    wire BSel;
    wire [3:0] ALUSel;
    wire MemRW;
    wire [1:0] WBSel;
    
    Control_Logic Cont_Log
    (
        .Instruction(Instruction),
        .BrEq(BrEq),
        .BrLt(BrLt),
        .PCSel(PCSel),
        .RegWEn(RegWEn),
        .ImmSel(ImmSel),
        .BrUn(BrUn),
        .ASel(ASel),
        .BSel(BSel),
        .ALUSel(ALUSel),
        .MemRW(MemRW),
        .WBSel(WBSel)
    );
    
    //Instantiate Program Counter
    reg [31:0] Updated_PC;
    wire [31:0] Program_Counter;
    wire [31:0] ALUResult;
    Register PC
    (
        .D(Updated_PC),
        .WE(Enable),
        .clk(clk),
        .rst_n(rst_n),
        .Q(Program_Counter)
    );
    
    always@(*)
    begin
        if(!PCSel)
             Updated_PC = Program_Counter + 4;
        else begin
             if(Instruction[6:0] == 7'b1100111 && Instruction[14:12] == 3'b000) //jalr
                Updated_PC = {ALUResult[31:1], 1'b0};   
             else Updated_PC = ALUResult;
             end
    end
    
//    //Instantiate IMEM
//    IMEM IMEM_single
//    (
//        .PC(Program_Counter),
//        .clk(clk),
//        .Instruction(Instruction)
//    );

    reg [31:0] imem_array [0:1023];
    assign Instruction = imem_array[Program_Counter[11:2]];
    
    //Instantiate RegFile
    wire [4:0] rd = Instruction[11:7];
    wire [4:0] rs1 = Instruction[19:15];
    wire [4:0] rs2 = Instruction[24:20];
    reg [31:0] wdata;
    wire [31:0] rdata1;
    wire [31:0] rdata2;
    wire [31:0] rdata_Mem;
    wire [31:0] DataToReg;
    RegFile RegFile_single
    (
        .ReadIndex1(rs1),
        .ReadIndex2(rs2),
        .WriteIndex(rd),
        .WriteData(wdata),
        .RegWEn(RegWEn),
        .clk(clk),
        .rst_n(rst_n),
        .ReadData1(rdata1),
        .ReadData2(rdata2)
    );
    
    always@(*)
    begin
    case(WBSel)
        2'b00: wdata = DataToReg;
        2'b01: wdata = ALUResult;
        2'b10: wdata = Program_Counter + 4;
        default: wdata = 32'd0;
    endcase
    end
    
    //Instantiate Immdiate Generator
    wire [31:0] Immediate;
    Imm_gen Immdiate_Gen
    (
        .Instruction(Instruction),
        .ImmSel(ImmSel),
        .Immediate(Immediate)
    );
    
    //Instantiate Branch Comparator
    Branch_Comp Branch_Comparator
    (
        .BrData1(rdata1),
        .BrData2(rdata2),
        .BrUn(BrUn),
        .BrEq(BrEq),
        .BrLt(BrLt)
    );
    
    //Instantiate ALU
    reg [31:0] A;
    reg [31:0] B;
    ALU ALU_Single
    (
        .A(A),
        .B(B),
        .ALUSel(ALUSel),
        .ALUResult(ALUResult)
    );
    
    always@(*)
    begin
        if(ASel)A = Program_Counter;
        else A = rdata1;
        if(BSel)B = Immediate;
        else B = rdata2;
    end
    
    wire [31:0] MemAddress; 
    assign MemAddress = ALUResult;
    
    //Instantiate DMEM
    wire [3:0] MemWriteMask;
    wire [31:0] DataToMem;
    DMEM DMEM_Single
    (
        .MemAddress(MemAddress),
        .MemWriteMask(MemWriteMask),
        .MemWriteData(DataToMem),
        .clk(clk),
        .MemReadData(rdata_Mem)
    );
    
    //Instantiate partial load
    partial_load load
    (
        .Instruction(Instruction),
        .MemAddress(MemAddress),
        .DataFromMem(rdata_Mem),
        .DataToReg(DataToReg)
    );
    
    
    //Instantiate partial store 
    partial_store store
    (
        .Instruction(Instruction),
        .MemAddress(MemAddress),
        .DataFromReg(rdata2),
        .MemWEn(MemRW),
        .DataToMem(DataToMem),
        .MemWriteMask(MemWriteMask)
    );
    
endmodule
