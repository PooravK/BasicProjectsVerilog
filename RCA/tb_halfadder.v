`timescale 1ns/1ps

module tb_halfadder();

    reg in0, in1, cin;
    wire sum, cout;

    halfadder uut (
        .in0(in0),
        .in1(in1),
        .cin(cin),
        .cout(cout),
        .sum(sum)
    );

    initial begin
        $dumpfile("halfadderwaveform.vcd");
        $dumpvars(0, tb_halfadder);

        in0 = 0; in1 = 0; cin = 0; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 0; in1 = 0; cin = 1; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 0; in1 = 1; cin = 0; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 0; in1 = 1; cin = 1; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 1; in1 = 0; cin = 0; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 1; in1 = 0; cin = 1; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 1; in1 = 1; cin = 0; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);
        in0 = 1; in1 = 1; cin = 1; #10
        $display("cin = %b input 1 = %b input 2 = %b | sum = %b | cout = %b", cin, in0, in1, sum, cout);

        $finish;
    end

endmodule