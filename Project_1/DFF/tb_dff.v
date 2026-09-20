`timescale 1ns/1ps

module dff_tb;

    reg clk;
    reg reset;
    reg d;
    wire q;

    // Instantiate DFF
    dff uut (
        .clk   (clk),
        .reset (reset),
        .d     (d),
        .q     (q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, dff_tb);

        // Initialize
        clk   = 1'b0;
        reset = 1'b1;
        d     = 1'b0;

        // Hold reset
        #10;
        reset = 1'b0;

        // Test 1: D = 1
        #5;
        d = 1'b1;

        // Test 2: D = 0
        #10;
        d = 1'b0;

        // Test 3: D = 1
        #10;
        d = 1'b1;

        // Test 4: Reset
        #10;
        reset = 1'b1;

        #10;
        reset = 1'b0;

        // Test 5: D = 0
        d = 1'b0;

        #10;

        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | clk=%b | reset=%b | d=%b | q=%b",
                 $time, clk, reset, d, q);
    end

endmodule