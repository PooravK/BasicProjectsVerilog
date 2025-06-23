`timescale 1ns/1ps

module tb_AndGate;
    reg in1, in2;
    wire out;

    AndGate uut(
        .in1(in1),
        .in2(in2),
        .out(out)
    );
    initial begin
        $dumpfile("AndWaveform.vcd");
        $dumpvars(0, tb_AndGate);

        in1 = 0; in2 = 0; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in1, in2, out);
        in1 = 0; in2 = 1; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in1, in2, out);
        in1 = 1; in2 = 0; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in1, in2, out);
        in1 = 1; in2 = 1; #10;
        $display("input_1 = %b, input_2 = %b, output = %b", in1, in2, out);
        
        $finish;
    end
endmodule