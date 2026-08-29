`timescale 1ns/1ps

module and_tb;

    reg a;
    reg b;
    wire y;

    // Instantiate the DUT
    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Generate all possible input combinations
    initial begin

        // Create waveform file
        $dumpfile("and_tb.vcd");
        $dumpvars(0, and_tb);

        $display(" A | B | Y");
        $display("---|---|---");

        a = 0; b = 0; #1;
        $display(" %b | %b | %b", a, b, y);

        a = 0; b = 1; #1;
        $display(" %b | %b | %b", a, b, y);

        a = 1; b = 0; #1;
        $display(" %b | %b | %b", a, b, y);

        a = 1; b = 1; #1;
        $display(" %b | %b | %b", a, b, y);

        $finish;
    end

endmodule