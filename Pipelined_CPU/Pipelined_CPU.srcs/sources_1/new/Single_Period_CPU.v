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


module Pipelined_CPU(
    input clk,
    input rst_n,
    
    //Just for test
    output wire [31:0] debug_pc,
    output wire [31:0] debug_wdata
    );
    
// ---------------------------------------Varibles------------------------------------------   
    //Enable/Not Enable signal
    wire Enable = 1'b1;
 
    wire [31:0]                              Program_Counter;    
    wire [31:0]                              Instruction;
    
    wire                                     BrEq;
    wire                                     BrLt;
    wire                                     Is_B_Type;
    wire                                     Is_J_Type;
    wire                                     Is_Jalr;
    wire                                     PCSel;
    wire                                     RegWEn;
    wire [2:0]                               ImmSel;
    wire                                     BrUn;
    wire                                     ASel;
    wire                                     BSel;
    wire [3:0]                               ALUSel;
    wire                                     MemRW;
    wire [1:0]                               WBSel;
    
    wire [4:0]                               rd;
    wire [4:0]                               rs1;
    wire [4:0]                               rs2;
    reg  [31:0]                              wdata;
    wire [31:0]                              rdata1;
    wire [31:0]                              rdata2;
    wire [31:0]                              rdata_Mem;
    wire [31:0]                              DataToReg;
    wire [31:0]                              PipeReg1_Out;
    wire [176:0]                             PipeReg2_Out;
    wire [144:0]                             PipeReg3_Out;
    wire [112:0]                             PipeReg4_Out;
    wire [31:0]                              PC_Plus_4_WB;
    wire                                     PC_Write;
    wire [31:0]                              A;
    wire [31:0]                              B;
    wire [31:0]                              ALUData1;
    wire [31:0]                              ALUData2;
    wire [31:0]                              ALUResult;
    wire                                     IF_ID_Write;
    wire                                     MEMReadEn_EX;
    wire [31:0]                              MemAddress;
    wire [3:0]                               MemWriteMask;
    wire [31:0]                              DataToMem;
    wire                                     Control_Stall;
    wire [31:0]                              Immediate;
    wire [2:0]                               func3_EX;
    wire                                     Branch_Taken;
    wire                                     Flush_IF_ID;
    wire                                     Flush_ID_EX;
    wire                                     Branch_Taken_Delay;
    
    
// -------------------------------------Instruction Fetch------------------------------------------
    //Instantiate Program Counter
    PC Prog_Counter
    (
        .clk(clk),
        .rst_n(rst_n),
        .PC_Write(PC_Write),
        .opcode_s2(PipeReg2_Out[23:17]),
        .funct3_s2(PipeReg2_Out[31:29]),
        .ALUResult(ALUResult),
        .Program_Counter(Program_Counter),
        .PCSel(PCSel)
    );
    
    //Instantiate IMEM for Pipelined Datapath
    IMEM IMEM_single
    (
        .PC(Program_Counter),
        .clk(clk),
        .ena(IF_ID_Write),
        .Instruction(Instruction)
    );

//    //IMEM for Single Cycle Datapath
//    reg [31:0] imem_array [0:1023];
//    assign Instruction = imem_array[Program_Counter[11:2]];

// -------------------------------------Instruction Decode------------------------------------------
   
    //Instantiate Control_Logic
    Control_Logic Cont_Log
    (
        .Instruction(Instruction),
        .Is_B_Type(Is_B_Type),
        .Is_J_Type(Is_J_Type),
        .Is_Jalr(Is_Jalr),
        .RegWEn(RegWEn),
        .ImmSel(ImmSel),
        .BrUn(BrUn),
        .ASel(ASel),
        .BSel(BSel),
        .ALUSel(ALUSel),
        .MemRW(MemRW),
        .WBSel(WBSel)
    );
    
    //Instantiate RegFile
    assign rd = Instruction[11:7];
    assign rs1 = Instruction[19:15];
    assign rs2 = Instruction[24:20];
    RegFile RegFile_single
    (
        .ReadIndex1(rs1),
        .ReadIndex2(rs2),
        .WriteIndex(PipeReg4_Out[28:24]),
        .WriteData(wdata),
        .RegWEn(PipeReg4_Out[13]),
        .clk(clk),
        .rst_n(rst_n),
        .ReadData1(rdata1),
        .ReadData2(rdata2)
    );
    
    //Test if EX is executing a load instruction
    assign MEMReadEn_EX = (PipeReg2_Out[23:17] == 7'b0000011) ? 1'b1 : 1'b0;
    
    //Instantiate Hazard Detection Unit
    Hazard_Detection_Unit Hazard
    (
        .rs1_ID(rs1),
        .rs2_ID(rs2),
        .rd_EX(PipeReg2_Out[28:24]),
        .MEMReadEn_EX(MEMReadEn_EX),
        .PC_Write(PC_Write),
        .IF_ID_Write(IF_ID_Write),
        .Control_Stall(Control_Stall)
    );
    
    //Instantiate Immdiate Generator
    Imm_gen Immdiate_Gen
    (
        .Instruction(Instruction),
        .ImmSel(ImmSel),
        .Immediate(Immediate)
    );

// -------------------------------------Execution------------------------------------------
    
    assign func3_EX = PipeReg2_Out[31:29];
    
    //Instantiate Branch Comparator
    Branch_Comp Branch_Comparator
    (
        .BrData1(ALUData1),
        .BrData2(ALUData2),
        .BrUn(PipeReg2_Out[9]),
        .BrEq(BrEq),
        .BrLt(BrLt)
    );
    
    assign Branch_Taken = (PipeReg2_Out[16] && (
                            ((func3_EX == 3'b000) && BrEq)  ||
                            ((func3_EX == 3'b001) && !BrEq) ||
                            ((func3_EX == 3'b100) && BrLt)  ||
                            ((func3_EX == 3'b110) && BrLt)  ||
                            ((func3_EX == 3'b101) && !BrLt) ||
                            ((func3_EX == 3'b111) && !BrLt)
                        )) || PipeReg2_Out[15] || PipeReg2_Out[14];
    
    assign PCSel = Branch_Taken;
    assign Flush_IF_ID = Branch_Taken;
    assign Flush_ID_EX = Branch_Taken;
    
    //instantiate Branch_Taken_Delay
    
    Branch_Taken_Delay Bran_Taken_Delay
    (
        .clk(clk),
        .rst_n(rst_n),
        .Branch_Taken(Branch_Taken),
        .Branch_Taken_Delay(Branch_Taken_Delay)
    );
    
    //Instantiate Forwarding Unit
    Forwarding_Unit Forward
    (
        .rs1_EX(PipeReg2_Out[36:32]),
        .rs2_EX(PipeReg2_Out[41:37]),
        .rd_MEM(PipeReg3_Out[28:24]),
        .RegWEn_MEM(PipeReg3_Out[13]),
        .rd_WB(PipeReg4_Out[28:24]),
        .RegWEn_WB(PipeReg4_Out[13]),
        .RegReadData1(PipeReg2_Out[144:113]),
        .RegReadData2(PipeReg2_Out[112:81]),
        .ALUResult(PipeReg3_Out[112:81]),
        .WB_Data(wdata),
        .ALUData1(ALUData1),
        .ALUData2(ALUData2)
    );
    
    //Instantiate ALU
    ALU ALU_Single
    (
        .A(A),
        .B(B),
        .ALUSel(PipeReg2_Out[6:3]),
        .ALUResult(ALUResult)
    );
    
    assign A = PipeReg2_Out[8] ? PipeReg2_Out[176:145] : ALUData1;
    assign B = PipeReg2_Out[7] ? PipeReg2_Out[80:49]   : ALUData2;
 
 // --------------------------------------Memory Access------------------------------------------ 
    assign MemAddress = PipeReg3_Out[112:81];
    
    //Instantiate DMEM
    DMEM DMEM_Single
    (
        .MemAddress(MemAddress),
        .MemWriteMask(MemWriteMask),
        .MemWriteData(DataToMem),
        .clk(clk),
        .MemReadData(rdata_Mem)
    );
    
    
    //Instantiate partial store 
    partial_store store
    (
        .Instruction(PipeReg3_Out[48:17]),
        .MemAddress(MemAddress),
        .DataFromReg(PipeReg3_Out[80:49]),
        .MemWEn(PipeReg3_Out[2]),
        .DataToMem(DataToMem),
        .MemWriteMask(MemWriteMask)
    );
    
// ----------------------------------------Write Back------------------------------------------
    //Instantiate partial load
    partial_load load
    (
        .Instruction(PipeReg4_Out[48:17]),
        .MemAddress(PipeReg4_Out[112:81]),
        .DataFromMem(rdata_Mem),
        .DataToReg(DataToReg)
    );

    always@(*)
    begin
    case(PipeReg4_Out[1:0])
        2'b00: wdata = DataToReg;
        2'b01: wdata = PipeReg4_Out[112:81];
        2'b10: wdata = PipeReg4_Out[80:49];
        default: wdata = 32'd0;
    endcase
    end
    
// ----------------------------------------Pipeline Registers------------------------------------------    
    //Instantiate IF/ID Register (PipeReg1)
    //[31:0] -> PC
    Pipe_Reg #(.WIDTH(32)) IF_ID_Reg
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(Flush_IF_ID),
        .WE(IF_ID_Write),
        .D({Program_Counter}),
        .Q(PipeReg1_Out)  
    );
    
    //Instantiate ID/EX Register (PipeReg2)
    //[176:145] -> PC ; [144:113] -> rdata1 ; [112:81] -> rdata2 ; [80:49] -> Immediate
    //[48:17] -> Instruction ; [16:0] -> Control_Logic
    Pipe_Reg #(.WIDTH(177)) ID_EX_Reg
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(Flush_ID_EX || Control_Stall || Branch_Taken_Delay),
        .WE(Enable),
        .D({PipeReg1_Out[31:0], rdata1, rdata2, Immediate, Instruction, Is_B_Type, Is_J_Type, Is_Jalr, 
            RegWEn, ImmSel, BrUn, ASel, BSel, ALUSel, MemRW, WBSel}),
        .Q(PipeReg2_Out)  
    );
    
    //Instantiate EX/MEM Register (PipeReg3)
    //[144:113] -> PC ; [112:81] -> ALUResult ; [80:49] -> rdata2
    //[48:17] -> Instruction ; [16:0] -> Control_Logic
    Pipe_Reg #(.WIDTH(145)) EX_MEM_Reg
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(1'b0),
        .WE(Enable),
        .D({PipeReg2_Out[176:145], ALUResult, ALUData2, PipeReg2_Out[48:0]}),
        .Q(PipeReg3_Out)  
    );
    
    //Instantiate MEM/WB Register (PipeReg4)
    //[112:81] -> ALUResult ; [80:49] -> PC_Plus_4_WB ; [48:17] -> Instruction ; [16:0] -> Control_Logic
    assign PC_Plus_4_WB = PipeReg3_Out[144:113] + 32'd4;
    
    Pipe_Reg #(.WIDTH(113)) MEM_WB_Reg
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(1'b0),
        .WE(Enable),
        .D({PipeReg3_Out[112:81], PC_Plus_4_WB, PipeReg3_Out[48:0]}),
        .Q(PipeReg4_Out)  
    );
    
    //Just for test
    assign debug_pc = Program_Counter; 
    assign debug_wdata = wdata;
endmodule
