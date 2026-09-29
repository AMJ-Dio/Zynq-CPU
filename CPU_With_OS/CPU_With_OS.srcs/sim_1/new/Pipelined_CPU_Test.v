`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/23 23:39:14
// Design Name: 
// Module Name: tb_Pipelined_CPU
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

module tb_Pipelined_CPU();

    // 1. Declare signals connecting to the top module
    reg clk;
    reg rst_n;
    
    // 2. Instantiate your 5-stage pipelined CPU
    Pipelined_CPU uut (
        .clk(clk),
        .rst_n(rst_n)
    );

    // 3. Generate clock signal (Period: 10ns, Frequency: 100MHz)
    always #5 clk = ~clk;
    
    // 4. Main simulation process
    initial begin
        // Initialization
        clk = 0;
        rst_n = 0; // Trigger asynchronous reset, clear all registers
        
        // Wait 12ns to release reset away from clock edge, preventing race condition
        #12; 
        rst_n = 1; 
        
        // Let the CPU run for 800 ns (enough to finish all test loops and jumps)
        #800;
        
        // -----------------------------------------------------------------
        // Automated report output (Check the Tcl Console at the bottom of Vivado)
        // -----------------------------------------------------------------
        $display("\n=========================================================");
        $display("*** 5-Stage Pipelined CPU Ultimate Stress Test Report ***");
        $display("=========================================================");
        $display("Final PC Pointer (Expected stuck at loop 0x54) : %h", uut.Program_Counter);
        $display("---------------------------------------------------------");
        $display("x3  (Expected 0000000c / 12) : %h", uut.RegFile_single.reg_array[3]);
        $display("x4  (Expected 0000000c / 12) : %h", uut.RegFile_single.reg_array[4]);
        $display("x5  (Expected 00000011 / 17) : %h", uut.RegFile_single.reg_array[5]);
        $display("x10 (Expected 00001000)      : %h", uut.RegFile_single.reg_array[10]);
        $display("x11 (Expected 00000034 / 52) : %h", uut.RegFile_single.reg_array[11]);
        $display("x13 (Expected 00001001)      : %h", uut.RegFile_single.reg_array[13]);
        $display("x14 (Expected 00000000 / 0 ) : %h", uut.RegFile_single.reg_array[14]);
        $display("=========================================================\n");
        
        // Auto-diagnose the most error-prone x5 register
        if (uut.RegFile_single.reg_array[5] == 32'h63) begin
            $display("[FAIL] FATAL ALARM: Branch Flush failed! x5 was corrupted by a ghost instruction (99)!");
        end else if (uut.RegFile_single.reg_array[5] == 32'h11) begin
            $display("[PASS] PERFECT: Load-Use Stall and Branch Flush both succeeded. x5 data is accurate!");
        end else begin
            $display("[WARN] WARNING: x5 value is unexpected. Please check Forwarding Unit or ALU logic.");
        end

        $display("\nSimulation completed successfully!");
        $finish;
    end

    // 5. Automatic PC trajectory tracker
    // Print whenever PC changes. This helps visualize Stall (PC pauses) and Flush (PC jumps).
    always @(uut.Program_Counter) begin
        if (rst_n) begin
            $display("Time: %0t ns | Executing PC: %0h", $time, uut.Program_Counter);
        end
    end

endmodule