`timescale 1ns/1ps

module tb_NandGate;
    reg in0, in1;
    wire out;

    NandGate uut(
        .in0(in0),
        .in1(in1),
        .out(out)
    );

    initial begin
        $dumpfile("NandWaveform.vcd");
        $dumpvars(0, tb_NandGate);

        in0 = 0; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in0, in1, out);
        in0 = 0; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in0, in1, out);
        in0 = 1; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in0, in1, out);
        in0 = 1; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in0, in1, out);

        $finish;
    end
endmodule