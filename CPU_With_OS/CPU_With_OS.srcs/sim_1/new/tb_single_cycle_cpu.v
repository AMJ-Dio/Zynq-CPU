`timescale 1ns / 1ps

module tb_single_cycle_cpu();

    // 1. 声明连接顶层模块的信号
    reg clk;
    reg rst_n;
    
    // 2. 例化你的顶层 CPU 模块
    Single_Period_CPU uut (
        .clk(clk),
        .rst_n(rst_n)
    );

    // 3. 生成时钟信号 (周期为 10ns, 频率 100MHz)
    always #5 clk = ~clk;
    
    // 4. 初始化与指令注入
    initial begin
        clk = 0;
        rst_n = 0; // 触发复位
        
        // ==========================================================
        // 汇编级全类型指令综合测试 (Instruction Coverage Test)
        // ==========================================================
        
        // [1] U-Type: lui (Load Upper Immediate)
        // x1 = 0x1000 (把 1 放在高 20 位)
        uut.imem_array[0] = 32'h000010b7; 
        
        // [2] I-Type (ALU): addi
        // x2 = 10 (0x0A)
        uut.imem_array[1] = 32'h00a00113; 
        
        // [3] R-Type: add
        // x3 = x1 + x2 = 0x100A
        uut.imem_array[2] = 32'h002081b3; 
        
        // [4] S-Type: sw (Store Word)
        // 把 x3 的值存入内存地址 20
        uut.imem_array[3] = 32'h00302a23; 
        
        // [5] I-Type (Load): lw (Load Word)
        // 从内存地址 20 读出数据，存入 x4 (x4 应该等于 0x100A)
        uut.imem_array[4] = 32'h01402203; 
        
        // [6] B-Type: bne (Branch if Not Equal)
        // 如果 x3 != x4，跳过下一条指令。由于它们相等，所以不跳转！
        uut.imem_array[5] = 32'h00419663; 
        
        // [7] I-Type (ALU): xori
        // x5 = x2 ^ 15 (10 ^ 15 = 5)
        uut.imem_array[6] = 32'h00f14293; 
        
        // [8] J-Type: jal (Jump and Link)
        // 跳转到 PC+8 (地址36)，并把返回地址 PC+4 (32) 存入 x6
        uut.imem_array[7] = 32'h0080036f; 
        
        // [9] 被跳过的指令 (不会执行！)
        uut.imem_array[8] = 32'h00000013; // nop
        
        // [10] U-Type: auipc (Add Upper Immediate to PC)
        // PC 是 36。x7 = 36 + (2 << 12) = 8228 (0x2024)
        uut.imem_array[9] = 32'h00002397; 
        
        // [11] I-Type (Jump): jalr (Jump and Link Register)
        // 跳转到 x6 + 16 (即 32 + 16 = 48)，不保存返回地址 (x0)
        uut.imem_array[10] = 32'h01030067; 
        
        // [12] 被跳过的指令 (不会执行！)
        uut.imem_array[11] = 32'h00000013; // nop
        
        // [13] R-Type (Shift): slli (逻辑左移)
        // x8 = x5 << 2 = 5 << 2 = 20 (0x14)
        uut.imem_array[12] = 32'h00229413; 
        
        // [14] 兜底指令
        uut.imem_array[13] = 32'h00000013; // nop
        uut.imem_array[14] = 32'h00000013; // nop
        
        // 避开时钟边沿释放复位
        #12; 
        rst_n = 1; 
        
        // 跑 180 纳秒 (足够执行完所有指令)
        #180;
        
        $display("========================================");
        $display("Simulation Finished Successfully!");
        $display("========================================");
        $finish;
    end

    // 5. 自动监视器 (Verification Monitor)
    // 只要 PC 发生变化，就会在控制台自动打印当前关键寄存器的状态
    always @(uut.Program_Counter) begin
        if (rst_n) begin
            $display("Time:%0t | PC:%0d | x1:%0h | x2:%0d | x3:%0h | x4:%0h | x5:%0d | x6:%0d | x7:%0h | x8:%0d", 
                     $time, 
                     uut.Program_Counter, 
                     uut.RegFile_single.reg_array[1],  // lui 测试
                     uut.RegFile_single.reg_array[2],  // addi 测试
                     uut.RegFile_single.reg_array[3],  // add 测试
                     uut.RegFile_single.reg_array[4],  // lw/sw 测试
                     uut.RegFile_single.reg_array[5],  // xori 测试
                     uut.RegFile_single.reg_array[6],  // jal 测试
                     uut.RegFile_single.reg_array[7],  // auipc 测试
                     uut.RegFile_single.reg_array[8]); // jalr/slli 测试
        end
    end

endmodule