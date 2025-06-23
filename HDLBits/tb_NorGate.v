`timescale 1ns/1ps

module tb_NorGate;
    reg in0, in1;
    wire out;

    NorGate uut(
        .in0(in0),
        .in1(in1),
        .out(out)
    );

    initial begin
        $dumpfile("NorWaveform.vcd");
        $dumpvars(0, tb_NorGate);

        in0 = 0; in1 = 0; #10;
        $display("input_1 = %d, input_2 = %d, output = %d", in0, in1, out);
        in0 = 0; in1 = 1; #10;
        $display("input_1 = %d, input_2 = %d, output = %d", in0, in1, out);
        in0 = 1; in1 = 0; #10;
        $display("input_1 = %d, input_2 = %d, output = %d", in0, in1, out);
        in0 = 1; in1 = 1; #10;
        $display("input_1 = %d, input_2 = %d, output = %d", in0, in1, out);
        $finish;
    end
endmodule