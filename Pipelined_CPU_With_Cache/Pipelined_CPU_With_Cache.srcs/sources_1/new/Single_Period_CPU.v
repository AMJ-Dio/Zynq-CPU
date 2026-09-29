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

`default_nettype none
module Pipelined_CPU(
    input wire clk,
    input wire rst_n,
    
    // =========================================================
    // 3. 面向 DDR3 的 AXI4 Master 接口 (The 5 Channels)
    // =========================================================
    
    // (1) 写地址通道 (Write Address Channel - AW)
    output wire [31:0]  m_axi_awaddr,   // 写回脏块的物理地址
    output wire [7:0]   m_axi_awlen,    //  突发长度 (Burst Length)，我们填 8'd3 (代表发4次)
    output wire [2:0]   m_axi_awsize,   // 每次传输大小 (3'b010 代表 4 Bytes)
    output wire [1:0]   m_axi_awburst,  // 突发类型 (2'b01 代表 INCR 地址递增)
    output wire         m_axi_awvalid,  // AW 通道握手：Cache 准备好发地址了
    input  wire         m_axi_awready,  // AW 通道握手：DDR3 准备好接地址了

    // (2) 写数据通道 (Write Data Channel - W)
    output wire [31:0]  m_axi_wdata,    // 写往 DDR3 的数据
    output wire [3:0]   m_axi_wstrb,    // 字节掩码 (通常是 4'b1111)
    output wire         m_axi_wlast,    //  突发的最后一次数据标志
    output wire         m_axi_wvalid,   // W 通道握手：数据有效
    input  wire         m_axi_wready,   // W 通道握手：DDR3 准备好接数据了

    // (3) 写响应通道 (Write Response Channel - B)
    input  wire [1:0]   m_axi_bresp,    // DDR3 返回的写结果 (00代表成功)
    input  wire         m_axi_bvalid,   // B 通道握手：DDR3 发回响应了
    output wire         m_axi_bready,   // B 通道握手：Cache 准备好接响应了

    // (4) 读地址通道 (Read Address Channel - AR)
    output wire [31:0]  m_axi_araddr,   // 请求读新块的物理地址
    output wire [7:0]   m_axi_arlen,    //  突发长度 (8'd3 代表读4次)
    output wire [2:0]   m_axi_arsize,   // 每次传输大小 (3'b010 代表 4 Bytes)
    output wire [1:0]   m_axi_arburst,  // 突发类型 (2'b01 代表 INCR)
    output wire         m_axi_arvalid,  // AR 通道握手
    input  wire         m_axi_arready,  // AR 通道握手

    // (5) 读数据通道 (Read Data Channel - R)
    input  wire [31:0]  m_axi_rdata,    // DDR3 传回来的数据
    input  wire [1:0]   m_axi_rresp,    // 读响应状态
    input  wire         m_axi_rlast,    // 读突发的最后一次标志
    input  wire         m_axi_rvalid,   // R 通道握手
    output wire         m_axi_rready    // R 通道握手
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
    wire                                     cpu_ready_D;
    wire                                     cpu_ready_I;
    wire                                     use_buffer;
    wire [31:0]                              buffer_inst;
    wire [31:0]                              raw_inst;
    
// -------------------------------------AXI4 Variables---------------------------------------------   
    //Read channels for I-Cache
    wire [31:0]  m_axi_araddr_IC;
    wire [7:0]   m_axi_arlen_IC;
    wire [2:0]   m_axi_arsize_IC;  
    wire [1:0]   m_axi_arburst_IC; 
    wire         m_axi_arvalid_IC; 
    wire         m_axi_arready_IC; 

    wire [31:0]  m_axi_rdata_IC;   
    wire [1:0]   m_axi_rresp_IC;  
    wire         m_axi_rlast_IC; 
    wire         m_axi_rvalid_IC; 
    wire         m_axi_rready_IC;  
    
    //Read channels for D-Cache
    wire [31:0]  m_axi_araddr_DC;
    wire [7:0]   m_axi_arlen_DC;
    wire [2:0]   m_axi_arsize_DC;  
    wire [1:0]   m_axi_arburst_DC; 
    wire         m_axi_arvalid_DC; 
    wire         m_axi_arready_DC; 

    wire [31:0]  m_axi_rdata_DC;   
    wire [1:0]   m_axi_rresp_DC;  
    wire         m_axi_rlast_DC; 
    wire         m_axi_rvalid_DC; 
    wire         m_axi_rready_DC;
    
// -------------------------------------Instruction Fetch------------------------------------------
    //Instantiate Program Counter
    PC Prog_Counter
    (
        .clk(clk),
        .rst_n(rst_n),
        .PC_Write(PC_Write && cpu_ready_I && cpu_ready_D),
        .opcode_s2(PipeReg2_Out[23:17]),
        .funct3_s2(PipeReg2_Out[31:29]),
        .ALUResult(ALUResult),
        .Program_Counter(Program_Counter),
        .PCSel(PCSel)
    );
    
//    //Instantiate IMEM for Pipelined Datapath
//    IMEM IMEM_single
//    (
//        .PC(Program_Counter),
//        .clk(clk),
//        .ena(IF_ID_Write && cpu_ready_D),
//        .Instruction(Instruction)
//    );

//    //IMEM for Single Cycle Datapath
//    reg [31:0] imem_array [0:1023];
//    assign Instruction = imem_array[Program_Counter[11:2]];

// Instantiate I_Cache
    I_Cache u_I_Cache( 
    // =========================================================
    // 1. 全局时钟与复位
    // =========================================================
    .clk(clk),
    .rst_n(rst_n),

    // =========================================================
    // 2. 面向 CPU 流水线的接口 
    // =========================================================
    .cpu_addr(Program_Counter),       // CPU 请求的物理地址
    .cpu_read_req(1'b1),   // 读请求使能
    .cpu_rdata(raw_inst),      // 读出的数据给 CPU
    .cpu_ready(cpu_ready_I),      //  核心：为 0 时冻结Program Counter！

    // =========================================================
    // 3. 面向 DDR3 的 AXI4 Master 接口 (The 2 Channels for Read)
    // =========================================================

    // (4) 读地址通道 (Read Address Channel - AR)
    .m_axi_araddr(m_axi_araddr_IC),   // 请求读新块的物理地址
    .m_axi_arlen(m_axi_arlen_IC),    //  突发长度 (8'd3 代表读4次)
    .m_axi_arsize(m_axi_arsize_IC),   // 每次传输大小 (3'b010 代表 4 Bytes)
    .m_axi_arburst(m_axi_arburst_IC),  // 突发类型 (2'b01 代表 INCR)
    .m_axi_arvalid(m_axi_arvalid_IC),  // AR 通道握手
    .m_axi_arready(m_axi_arready_IC),  // AR 通道握手

    // (5) 读数据通道 (Read Data Channel - R)
    .m_axi_rdata(m_axi_rdata_IC),    // DDR3 传回来的数据
    .m_axi_rresp(m_axi_rresp_IC),    // 读响应状态
    .m_axi_rlast(m_axi_rlast_IC),    // 读突发的最后一次标志
    .m_axi_rvalid(m_axi_rvalid_IC),   // R 通道握手
    .m_axi_rready(m_axi_rready_IC)    // R 通道握手
    );
    
    //Instantiate Instruction_Buffer
    wire IF_Stall = !(IF_ID_Write && cpu_ready_D);
    
    Instruction_Buffer u_Instruction_Buffer(
    .clk              (clk),
    .rst_n            (rst_n),
    .stall            (IF_Stall),
    .raw_i_cache_data (raw_inst),
    .use_buffer       (use_buffer),
    .stall_buffer_inst(buffer_inst)
    );
    
    assign Instruction = (use_buffer) ? buffer_inst : raw_inst;
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
    
//    //Instantiate DMEM
//    DMEM DMEM_Single
//    (
//        .MemAddress(MemAddress),
//        .MemWriteMask(MemWriteMask),
//        .MemWriteData(DataToMem),
//        .clk(clk),
//        .MemReadData(rdata_Mem)
//    );
    
    //Instantiate D_Cache
    wire is_load  = (PipeReg3_Out[23:17] == 7'b0000011);
    wire is_store = (PipeReg3_Out[23:17] == 7'b0100011);
    
    D_Cache u_D_Cache
    (
        // =========================================================
        // 1. 全局时钟与复位
        // =========================================================
        .clk(clk),
        .rst_n(rst_n),

        // =========================================================
        // 2. 面向 CPU 流水线的接口 (和以前的 DMEM 类似，但多了一个 Ready)
        // =========================================================
        .cpu_addr(MemAddress),       // CPU 请求的物理地址
        .cpu_wdata(DataToMem),      // CPU 要写的数据
        .cpu_wmask(MemWriteMask),      // 写掩码 (sb, sh, sw)
        .cpu_read_req(is_load),   // 读请求使能
        .cpu_write_req(is_store),  // 写请求使能
        .cpu_rdata(rdata_Mem),      // 读出的数据给 CPU
        .cpu_ready(cpu_ready_D),      // 核心：为 0 时冻结 CPU流水线！

        // =========================================================
        // 3. 面向 DDR3 的 AXI4 Master 接口 (The 5 Channels)
        // =========================================================
    
        // (1) 写地址通道 (Write Address Channel - AW)
        .m_axi_awaddr(m_axi_awaddr),   // 写回脏块的物理地址
        .m_axi_awlen(m_axi_awlen),    //  突发长度 (Burst Length)，我们填 8'd3 (代表发4次)
        .m_axi_awsize(m_axi_awsize),   // 每次传输大小 (3'b010 代表 4 Bytes)
        .m_axi_awburst(m_axi_awburst),  // 突发类型 (2'b01 代表 INCR 地址递增)
        .m_axi_awvalid(m_axi_awvalid),  // AW 通道握手：Cache 准备好发地址了
        .m_axi_awready(m_axi_awready),  // AW 通道握手：DDR3 准备好接地址了

        // (2) 写数据通道 (Write Data Channel - W)
        .m_axi_wdata(m_axi_wdata),    // 写往 DDR3 的数据
        .m_axi_wstrb(m_axi_wstrb),    // 字节掩码 (通常是 4'b1111)
        .m_axi_wlast(m_axi_wlast),    //  突发的最后一次数据标志
        .m_axi_wvalid(m_axi_wvalid),   // W 通道握手：数据有效
        .m_axi_wready(m_axi_wready),   // W 通道握手：DDR3 准备好接数据了

        // (3) 写响应通道 (Write Response Channel - B)
        .m_axi_bresp(m_axi_bresp),    // DDR3 返回的写结果 (00代表成功)
        .m_axi_bvalid(m_axi_bvalid),   // B 通道握手：DDR3 发回响应了
        .m_axi_bready(m_axi_bready),   // B 通道握手：Cache 准备好接响应了

        // (4) 读地址通道 (Read Address Channel - AR)
        .m_axi_araddr(m_axi_araddr_DC),   // 请求读新块的物理地址
        .m_axi_arlen(m_axi_arlen_DC),    //  突发长度 (8'd3 代表读4次)
        .m_axi_arsize(m_axi_arsize_DC),   // 每次传输大小 (3'b010 代表 4 Bytes)
        .m_axi_arburst(m_axi_arburst_DC),  // 突发类型 (2'b01 代表 INCR)
        .m_axi_arvalid(m_axi_arvalid_DC),  // AR 通道握手
        .m_axi_arready(m_axi_arready_DC),  // AR 通道握手
    
        // (5) 读数据通道 (Read Data Channel - R)
        .m_axi_rdata(m_axi_rdata_DC),    // DDR3 传回来的数据
        .m_axi_rresp(m_axi_rresp_DC),    // 读响应状态
        .m_axi_rlast(m_axi_rlast_DC),    // 读突发的最后一次标志
        .m_axi_rvalid(m_axi_rvalid_DC),   // R 通道握手
        .m_axi_rready(m_axi_rready_DC)    // R 通道握手
    );
    
    //Instantiate partial store 
    partial_store store
    (
        .funct3(PipeReg3_Out[31:29]),
        .MemAddress_low2bits(MemAddress[1:0]),
        .DataFromReg(PipeReg3_Out[80:49]),
        .MemWEn(PipeReg3_Out[2]),
        .DataToMem(DataToMem),
        .MemWriteMask(MemWriteMask)
    );
    
// ----------------------------------------Write Back------------------------------------------
    //Instantiate partial load
    partial_load load
    (
        .funct3(PipeReg4_Out[31:29]),
        .MemAddress_low2bits(PipeReg4_Out[82:81]),
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
        .WE(IF_ID_Write && cpu_ready_D && cpu_ready_I),
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
        .WE(Enable && cpu_ready_D),
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
        .WE(Enable && cpu_ready_D),
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
        .WE(Enable && cpu_ready_D),
        .D({PipeReg3_Out[112:81], PC_Plus_4_WB, PipeReg3_Out[48:0]}),
        .Q(PipeReg4_Out)  
    );
    
// ----------------------------------------AXI4 BUS------------------------------------------ 
    AXI_Arbiter u_AXI_Arbiter(
    .clk            (clk),
    .rst_n          (rst_n),

    // I Cache 读地址通道
    .m_axi_araddr_IC(m_axi_araddr_IC),
    .m_axi_arvalid_IC(m_axi_arvalid_IC),
    .m_axi_arready_IC(m_axi_arready_IC),

    // I Cache 读数据通道
    .m_axi_rdata_IC (m_axi_rdata_IC),
    .m_axi_rresp_IC (m_axi_rresp_IC),
    .m_axi_rlast_IC (m_axi_rlast_IC),
    .m_axi_rvalid_IC(m_axi_rvalid_IC),
    .m_axi_rready_IC(m_axi_rready_IC),

    // D Cache 读地址通道
    .m_axi_araddr_DC(m_axi_araddr_DC),
    .m_axi_arvalid_DC(m_axi_arvalid_DC),
    .m_axi_arready_DC(m_axi_arready_DC),

    // D Cache 读数据通道
    .m_axi_rdata_DC (m_axi_rdata_DC),
    .m_axi_rresp_DC (m_axi_rresp_DC),
    .m_axi_rlast_DC (m_axi_rlast_DC),
    .m_axi_rvalid_DC(m_axi_rvalid_DC),
    .m_axi_rready_DC(m_axi_rready_DC),

    // 下游 AXI 总线 读地址通道
    .m_axi_araddr   (m_axi_araddr),
    .m_axi_arlen    (m_axi_arlen),
    .m_axi_arsize   (m_axi_arsize),
    .m_axi_arburst  (m_axi_arburst),
    .m_axi_arvalid  (m_axi_arvalid),
    .m_axi_arready  (m_axi_arready),

    // 下游 AXI 总线 读数据通道
    .m_axi_rdata    (m_axi_rdata),
    .m_axi_rresp    (m_axi_rresp),
    .m_axi_rlast    (m_axi_rlast),
    .m_axi_rvalid   (m_axi_rvalid),
    .m_axi_rready   (m_axi_rready)
);
    
    
endmodule
