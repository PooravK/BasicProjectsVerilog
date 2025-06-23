`timescale 1ns/1ps

module tb_OrGate;
    reg in0, in1;
    wire out;

    OrGate uut(
        .in0(in0),
        .in1(in1),
        .out(out)
    );

    initial begin
        $dumpfile("OrWaveform.vcd");
        $dumpvars(0, tb_OrGate);

        in0 = 0; in1 = 0; #10;
        $display("input_0 = %b, input_1 = %b, output = %b", in0, in1, out);
        in0 = 0; in1 = 1; #10;
        $display("input_0 = %b, input_1 = %b, output = %b", in0, in1, out);
        in0 = 1; in1 = 0; #10;
        $display("input_0 = %b, input_1 = %b, output = %b", in0, in1, out);
        in0 = 1; in1 = 1; #10;
        $display("input_0 = %b, input_1 = %b, output = %b", in0, in1, out);

        $finish;
    end
endmodule