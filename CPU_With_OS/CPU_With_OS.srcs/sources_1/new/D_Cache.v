`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/05 21:28:23
// Design Name: 
// Module Name: D_Cache
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

//Core Parameters:
//1.Total volume: 32KB
//2.Method: 4-way associative cache
//3.Cache Line (Block size): 16 Bytes (4 Words)
//4.CPU physical address line length: 32 bits
//5.Tag: 19 bits ; Index: 9 bits ; Offset: 4 bits.

`default_nettype none
module D_Cache( 
    // =========================================================
    // 1. 全局时钟与复位
    // =========================================================
    input  wire         clk,
    input  wire         rst_n,

    // =========================================================
    // 2. 面向 CPU 流水线的接口 (和以前的 DMEM 类似，但多了一个 Ready)
    // =========================================================
    input  wire [31:0]  cpu_addr,       // CPU 请求的物理地址
    input  wire [31:0]  cpu_wdata,      // CPU 要写的数据
    input  wire [3:0]   cpu_wmask,      // 写掩码 (sb, sh, sw)
    input  wire         cpu_read_req,   // 读请求使能
    input  wire         cpu_write_req,  // 写请求使能
    output wire [31:0]  cpu_rdata,      // 读出的数据给 CPU
    output wire         cpu_ready,      //  核心：为 0 时冻结 CPU流水线！

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
//=====================================================================================================================
// Constant Definition :
//=====================================================================================================================
// FSM States
localparam [1:0]    COMPARE    = 2'd0;  // 正常运行，比对 Tag，判断 Hit/Miss
localparam [1:0]    WRITE_BACK = 2'd1;  // 脏块写回：通过 AXI AW 和 W 通道把脏数据写入 DDR3
localparam [1:0]    ALLOCATE   = 2'd2;  // 分配新块：通过 AXI AR 和 R 通道从 DDR3 读入新数据
localparam [1:0]    REFILL     = 2'd3;  // 重填更新：把新数据和新 Tag 拍进 BRAM，然后跳回 COMPARE

// AXI4 Constants
localparam [7:0] AXI_BURST_LEN  = 8'd3;   // Burst Length = 4次 (0~3)
localparam [2:0] AXI_BURST_SIZE = 3'b010; // 每次传输 4 Bytes (32 bits)
localparam [1:0] AXI_BURST_TYPE = 2'b01;  // INCR (地址递增模式)    
      
//=====================================================================================================================
// Variable Definition :
//=====================================================================================================================
wire  [15:0]                                            WriteMask_da0; //da means data array
wire  [15:0]                                            WriteMask_da1;
wire  [15:0]                                            WriteMask_da2;
wire  [15:0]                                            WriteMask_da3;
wire  [15:0]                                            WriteMask;    
wire  [127:0]                                           WriteData_da0;
wire  [127:0]                                           WriteData_da1;
wire  [127:0]                                           WriteData_da2;
wire  [127:0]                                           WriteData_da3;
wire  [127:0]                                           WriteData;
wire  [127:0]                                           ReadData_da0;
wire  [127:0]                                           ReadData_da1;  
wire  [127:0]                                           ReadData_da2;  
wire  [127:0]                                           ReadData_da3;
wire  [127:0]                                           ReadData;
reg   [127:0]                                           shift_data;
wire  [127:0]                                           victim_data;       
wire  [20:0]                                            WriteData_ta0;
wire  [20:0]                                            WriteData_ta1;
wire  [20:0]                                            WriteData_ta2;
wire  [20:0]                                            WriteData_ta3;
wire                                                    ena_ta0;
wire                                                    ena_ta1;
wire                                                    ena_ta2;
wire                                                    ena_ta3;
    
wire  [18:0]                                            Tag_ta0;      //ta means tag array
wire  [18:0]                                            Tag_ta1;
wire  [18:0]                                            Tag_ta2;
wire  [18:0]                                            Tag_ta3;
wire  [18:0]                                            Tag_cpu;
wire                                                    Valid_ta0;
wire                                                    Valid_ta1;
wire                                                    Valid_ta2;
wire                                                    Valid_ta3;
wire                                                    Dirty_ta0;
wire                                                    Dirty_ta1;
wire                                                    Dirty_ta2;
wire                                                    Dirty_ta3;
wire                                                    Dirty_sel;    //Dirty bit of the selected block
wire  [8:0]                                             Index;
wire  [3:0]                                             Offset;    

reg   [1:0]                                             state;
reg   [1:0]                                             next_state;
wire                                                    miss;
wire                                                    hit;
wire                                                    hit_ta0;
wire                                                    hit_ta1;
wire                                                    hit_ta2;
wire                                                    hit_ta3;
wire  [1:0]                                             hit_way;
wire                                                    invalid_exist;
wire                                                    cpu_req;
wire                                                    tag_match;
reg                                                     tag_ready;

reg   [2:0]                                             lru_array [0:511];
wire  [1:0]                                             victim_way;
reg   [1:0]                                             victim_way_locked;
wire  [2:0]                                             lru_bits;
wire  [2:0]                                             next_lru;
wire                                                    enter_ALLOC;
reg                                                     ena_line_buff;
integer                                                 i;

reg                                                     aw_done;
reg                                                     ar_done;

reg   [127:0]                                           buffer_data;
reg   [2:0]                                             write_count;
//=====================================================================================================================
// Instantiate Data_Array / Tag_Array / Shift Reg / Line Buffer Reg
//=====================================================================================================================
//Data Array 0
Data_Array da_0
(
     .clka(clk),
     .wea(WriteMask_da0),
     .addra(Index),
     .dina(WriteData_da0),
     .clkb(clk),
     .addrb(Index),
     .doutb(ReadData_da0)
);

//Data Array 1
Data_Array da_1
(
     .clka(clk),
     .wea(WriteMask_da1),
     .addra(Index),
     .dina(WriteData_da1),
     .clkb(clk),
     .addrb(Index),
     .doutb(ReadData_da1)
);        

//Data Array 2    
Data_Array da_2
(
     .clka(clk),
     .wea(WriteMask_da2),
     .addra(Index),
     .dina(WriteData_da2),
     .clkb(clk),
     .addrb(Index),
     .doutb(ReadData_da2)
);    

//Data Array 3    
Data_Array da_3
(
     .clka(clk),
     .wea(WriteMask_da3),
     .addra(Index),
     .dina(WriteData_da3),
     .clkb(clk),
     .addrb(Index),
     .doutb(ReadData_da3)
);   

//Tag Array 0
Tag_Array ta_0
(
     .clka(clk),
     .wea(ena_ta0),
     .addra(Index),
     .dina(WriteData_ta0),
     .clkb(clk),
     .addrb(Index),
     .doutb({Tag_ta0, Valid_ta0, Dirty_ta0})
);

//Tag Array 1
Tag_Array ta_1
(
     .clka(clk),
     .wea(ena_ta1),
     .addra(Index),
     .dina(WriteData_ta1),
     .clkb(clk),
     .addrb(Index),
     .doutb({Tag_ta1, Valid_ta1, Dirty_ta1})
);

//Tag Array 2
Tag_Array ta_2
(
     .clka(clk),
     .wea(ena_ta2),
     .addra(Index),
     .dina(WriteData_ta2),
     .clkb(clk),
     .addrb(Index),
     .doutb({Tag_ta2, Valid_ta2, Dirty_ta2})
);

//Tag Array 3
Tag_Array ta_3
(
     .clka(clk),
     .wea(ena_ta3),
     .addra(Index),
     .dina(WriteData_ta3),
     .clkb(clk),
     .addrb(Index),
     .doutb({Tag_ta3, Valid_ta3, Dirty_ta3})
);

//Seperate CPU addr
assign {Tag_cpu, Index, Offset} = cpu_addr;

//=====================================================================================================================
// Logic Design: FSM
//=====================================================================================================================  
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)
        tag_ready <= 0;
    else if((state == COMPARE) && cpu_req && !tag_ready)
        tag_ready <= 1'b1;
    else if((state != COMPARE) || (hit && tag_ready))
        tag_ready <= 0; 
end

assign invalid_exist = !Valid_ta0 || !Valid_ta1 || !Valid_ta2 || !Valid_ta3;
assign cpu_req = cpu_read_req || cpu_write_req;

always@(*) begin
    case(state)
        COMPARE: begin
                 if(cpu_req && tag_ready) begin
                     if((miss && invalid_exist) || (miss && !Dirty_sel && !invalid_exist))
                        next_state = ALLOCATE;
                     else if(miss && Dirty_sel && !invalid_exist)
                        next_state = WRITE_BACK;
                     else 
                        next_state = COMPARE;
                 end
                 else   next_state = COMPARE;
                 end
        WRITE_BACK: begin
                    if(m_axi_bready && m_axi_bvalid)
                        next_state = ALLOCATE;
                    else
                        next_state = WRITE_BACK;
                    end
        ALLOCATE: begin
                    if(m_axi_rvalid && m_axi_rready && m_axi_rlast)
                        next_state = REFILL;
                    else
                        next_state = ALLOCATE;
                  end
        REFILL: begin
                        next_state = COMPARE;
                end            
    endcase
end 
    
    
always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        state <= COMPARE;
    end else begin
        state <= next_state;
    end
end   

//=====================================================================================================================
// Logic Design: 3-bit Tree Pseudo LRU 
//=====================================================================================================================
//0 means left , 1 means right
//lru_bits[2] -> root node ; lru_bits[1] -> left node ; lru_bits[0] -> right node

assign lru_bits = lru_array[Index];

assign hit_ta0 = (Tag_cpu == Tag_ta0) && Valid_ta0 && tag_ready;
assign hit_ta1 = (Tag_cpu == Tag_ta1) && Valid_ta1 && tag_ready;
assign hit_ta2 = (Tag_cpu == Tag_ta2) && Valid_ta2 && tag_ready;
assign hit_ta3 = (Tag_cpu == Tag_ta3) && Valid_ta3 && tag_ready;

assign hit_way = hit_ta0 ? 2'd0 :
                 hit_ta1 ? 2'd1 :
                 hit_ta2 ? 2'd2 : 2'd3;
                 
assign tag_match = hit_ta0 || hit_ta1 || hit_ta2 || hit_ta3;
assign hit = (!cpu_req || (cpu_req && tag_match)) ? 1'b1 : 1'b0;
assign miss = (cpu_req && !tag_match && tag_ready) ? 1'b1 : 1'b0;                 

//find victim
assign victim_way = 
        (!Valid_ta0) ? 2'd0 :
        (!Valid_ta1) ? 2'd1 :
        (!Valid_ta2) ? 2'd2 :
        (!Valid_ta3) ? 2'd3 :
        ((lru_bits == 3'b000) || (lru_bits == 3'b001)) ? 2'd0 :
        ((lru_bits == 3'b010) || (lru_bits == 3'b011)) ? 2'd1 :
        ((lru_bits == 3'b100) || (lru_bits == 3'b110)) ? 2'd2 :
        ((lru_bits == 3'b101) || (lru_bits == 3'b111)) ? 2'd3 :
        2'd0; 

//victim register
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        victim_way_locked <= 2'd0;
    else if (state == COMPARE)
        victim_way_locked <= victim_way; 
end

//updated lru
assign next_lru[2] = (hit && (hit_way[1] == 1'b0)) ? 1'b1 : (hit && (hit_way[1] == 1'b1)) ? 1'b0 : lru_bits[2];
assign next_lru[1] = (hit && (hit_way[1] == 1'b0)) ? ~hit_way[0] : lru_bits[1];
assign next_lru[0] = (hit && (hit_way[1] == 1'b1)) ? ~hit_way[0] : lru_bits[0];

//initialize and update lru
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 512; i = i + 1) lru_array[i] <= 3'b000;
    end
    else if(hit && cpu_req) lru_array[Index] <= next_lru;
end

//=====================================================================================================================
// Logic Design: Native Logic Design 
//=====================================================================================================================
assign Dirty_sel = (victim_way == 2'd0) ? Dirty_ta0 :
                   (victim_way == 2'd1) ? Dirty_ta1 :
                   (victim_way == 2'd2) ? Dirty_ta2 : Dirty_ta3 ;

assign cpu_ready = (!cpu_req) || (state == COMPARE && hit && tag_ready); 

assign WriteMask = (Offset[3:2] == 2'b00) ? {{12{1'b0}}, cpu_wmask} :
                   (Offset[3:2] == 2'b01) ? {{8{1'b0}}, cpu_wmask, {4{1'b0}}} :
                   (Offset[3:2] == 2'b10) ? {{4{1'b0}}, cpu_wmask, {8{1'b0}}} :
                   {cpu_wmask, {12{1'b0}}};
                   
assign WriteData = (Offset[3:2] == 2'b00) ? {{96{1'b0}}, cpu_wdata} :
                   (Offset[3:2] == 2'b01) ? {{64{1'b0}}, cpu_wdata, {32{1'b0}}} :
                   (Offset[3:2] == 2'b10) ? {{32{1'b0}}, cpu_wdata, {64{1'b0}}} :
                   {cpu_wdata, {96{1'b0}}};

assign WriteMask_da0 = ((state == COMPARE) && hit_ta0 && cpu_write_req) ? WriteMask :
                       ((state == REFILL) && (victim_way_locked == 2'b00)) ? 16'hFFFF : 16'd0;
assign WriteMask_da1 = ((state == COMPARE) && hit_ta1 && cpu_write_req) ? WriteMask :
                       ((state == REFILL) && (victim_way_locked == 2'b01)) ? 16'hFFFF : 16'd0;
assign WriteMask_da2 = ((state == COMPARE) && hit_ta2 && cpu_write_req) ? WriteMask :
                       ((state == REFILL) && (victim_way_locked == 2'b10)) ? 16'hFFFF : 16'd0;
assign WriteMask_da3 = ((state == COMPARE) && hit_ta3 && cpu_write_req) ? WriteMask :
                       ((state == REFILL) && (victim_way_locked == 2'b11)) ? 16'hFFFF : 16'd0;

assign WriteData_da0 = ((state == COMPARE) && hit_ta0 && cpu_write_req) ? WriteData :
                       ((state == REFILL) && (victim_way_locked == 2'b00)) ? buffer_data : 128'd0;
assign WriteData_da1 = ((state == COMPARE) && hit_ta1 && cpu_write_req) ? WriteData :
                       ((state == REFILL) && (victim_way_locked == 2'b01)) ? buffer_data : 128'd0;
assign WriteData_da2 = ((state == COMPARE) && hit_ta2 && cpu_write_req) ? WriteData :
                       ((state == REFILL) && (victim_way_locked == 2'b10)) ? buffer_data : 128'd0;
assign WriteData_da3 = ((state == COMPARE) && hit_ta3 && cpu_write_req) ? WriteData :
                       ((state == REFILL) && (victim_way_locked == 2'b11)) ? buffer_data : 128'd0;                                                                     

assign ReadData = ((state == COMPARE) && hit_ta0 && cpu_read_req) ? ReadData_da0 :
                  ((state == COMPARE) && hit_ta1 && cpu_read_req) ? ReadData_da1 : 
                  ((state == COMPARE) && hit_ta2 && cpu_read_req) ? ReadData_da2 :    
                  ((state == COMPARE) && hit_ta3 && cpu_read_req) ? ReadData_da3 : 128'd0;
                   
assign cpu_rdata = (Offset[3:2] == 2'b00) ? ReadData[31:0]  :
                   (Offset[3:2] == 2'b01) ? ReadData[63:32] :
                   (Offset[3:2] == 2'b10) ? ReadData[95:64] : ReadData[127:96] ;
          
// Tag_array ena
assign ena_ta0 = ((state == REFILL) && (victim_way_locked == 2'd0)) ? 1'b1 : 
                 ((state == COMPARE) && hit_ta0 && cpu_write_req) ? 1'b1 : 1'b0;
assign ena_ta1 = ((state == REFILL) && (victim_way_locked == 2'd1)) ? 1'b1 : 
                 ((state == COMPARE) && hit_ta1 && cpu_write_req) ? 1'b1 : 1'b0;
assign ena_ta2 = ((state == REFILL) && (victim_way_locked == 2'd2)) ? 1'b1 : 
                 ((state == COMPARE) && hit_ta2 && cpu_write_req) ? 1'b1 : 1'b0;
assign ena_ta3 = ((state == REFILL) && (victim_way_locked == 2'd3)) ? 1'b1 : 
                 ((state == COMPARE) && hit_ta3 && cpu_write_req) ? 1'b1 : 1'b0;
                 
// New Tag_array ：{Tag，Valid always 1，Dirty always 0}
assign WriteData_ta0 = (state == REFILL) ? {Tag_cpu, 1'b1, 1'b0} : {Tag_ta0, 1'b1, 1'b1};
assign WriteData_ta1 = (state == REFILL) ? {Tag_cpu, 1'b1, 1'b0} : {Tag_ta1, 1'b1, 1'b1};
assign WriteData_ta2 = (state == REFILL) ? {Tag_cpu, 1'b1, 1'b0} : {Tag_ta2, 1'b1, 1'b1};
assign WriteData_ta3 = (state == REFILL) ? {Tag_cpu, 1'b1, 1'b0} : {Tag_ta3, 1'b1, 1'b1};

//=====================================================================================================================
// Logic Design: AXI Write Logic Design
//=====================================================================================================================
assign m_axi_awlen = AXI_BURST_LEN;
assign m_axi_awsize = AXI_BURST_SIZE;
assign m_axi_awburst = AXI_BURST_TYPE;    

assign m_axi_awaddr = (victim_way_locked == 2'b00) ? {Tag_ta0, Index, {4{1'b0}}} :
                      (victim_way_locked == 2'b01) ? {Tag_ta1, Index, {4{1'b0}}} :
                      (victim_way_locked == 2'b10) ? {Tag_ta2, Index, {4{1'b0}}} : {Tag_ta3, Index, {4{1'b0}}};

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        aw_done <= 0;
    else if((state == COMPARE) && (next_state == WRITE_BACK))
        aw_done <= 0;
    else if(m_axi_awvalid && m_axi_awready)
        aw_done <= 1'b1;    
end                     
    
assign m_axi_awvalid = (state == WRITE_BACK) && !aw_done;    
   
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)
        write_count <= 0;
    else if((state == COMPARE) && (next_state == WRITE_BACK))
        write_count <= 0;
    else if(m_axi_wvalid && m_axi_wready && (write_count != 4))
        write_count <= write_count + 1;
    else if(write_count == 4) write_count <= 3'd4;
end

assign m_axi_wvalid = (state == WRITE_BACK) && aw_done && (write_count != 4);
assign m_axi_wstrb  = ((state == WRITE_BACK) && aw_done && (write_count != 4)) ? 4'b1111 : 4'd0;
assign m_axi_wlast  = (write_count == 3) && (m_axi_wvalid && m_axi_wready);

assign victim_data = (victim_way_locked == 2'd0) ? ReadData_da0 :
                     (victim_way_locked == 2'd1) ? ReadData_da1 : 
                     (victim_way_locked == 2'd2) ? ReadData_da2 : ReadData_da3; 

//shift register
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        shift_data <= 128'd0;
    else if (state == WRITE_BACK && !aw_done)
        shift_data <= victim_data; // 刚进 WB 时，一次性装填脏块数据
    else if (m_axi_wvalid && m_axi_wready && write_count != 4)
        shift_data <= shift_data >> 32; // 每次握手成功，无脑右移 32 位！
end

assign m_axi_wdata = shift_data[31:0];

assign m_axi_bready = ((state == WRITE_BACK) && (write_count == 4));


//=====================================================================================================================
// Logic Design: AXI Read Logic Design
//=====================================================================================================================
assign m_axi_arlen = AXI_BURST_LEN;    
assign m_axi_arsize = AXI_BURST_SIZE;
assign m_axi_arburst = AXI_BURST_TYPE;        
assign m_axi_araddr = {Tag_cpu, Index, {4{1'b0}}};    
  
assign enter_ALLOC = ((state == COMPARE) && (next_state == ALLOCATE)) || ((state == WRITE_BACK) && (next_state == ALLOCATE));   
    
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        ar_done <= 0;
    else if(enter_ALLOC)
        ar_done <= 0;
    else if(m_axi_arvalid && m_axi_arready)
        ar_done <= 1'b1;    
end                     
    
assign m_axi_arvalid = (state == ALLOCATE) && !ar_done;         
    
assign m_axi_rready = (state == ALLOCATE) && ar_done;   
    
//line buffer register
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)
        buffer_data <= 0;
    else if((state == ALLOCATE) && (m_axi_rvalid && m_axi_rready))
        buffer_data <= {m_axi_rdata, buffer_data[127:32]};
end

endmodule
