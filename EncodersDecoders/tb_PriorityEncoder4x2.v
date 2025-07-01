`timescale 1ns/1ps

module tb_PriorityEncoder4x1();
    reg [3:0]in;
    wire out0;
    wire out1;

    PriorityEncoder4x2 uut(
        .in(in),
        .out0(out0),
        .out1(out1)
    );

    initial begin
        $dumpfile("4x2priorityencoderwaveform.vcd");
        $dumpvars(0, tb_PriorityEncoder4x1);

        in[3] = 0; in[2] = 0; in[1] = 0; in[0] = 0; #10;
        $display("in0 = %b in1 = %b in2 = %b in3 = %b expected: out1 = x out0 = x results: out1 = %b out0 = %b", in[0], in[1], in[2], in[3], out1, out0);
        in[3] = 0; in[2] = 0; in[1] = 0; in[0] = 1; #10;
        $display("in0 = %b in1 = %b in2 = %b in3 = %b expected: out1 = 0 out0 = 0 results: out1 = %b out0 = %b", in[0], in[1], in[2], in[3], out1, out0);
        in[3] = 0; in[2] = 0; in[1] = 1; in[0] = 0; #10;
        $display("in0 = %b in1 = %b in2 = %b in3 = %b expected: out1 = 0 out0 = 1 results: out1 = %b out0 = %b", in[0], in[1], in[2], in[3], out1, out0);
        in[3] = 0; in[2] = 1; in[1] = 0; in[0] = 0; #10;
        $display("in0 = %b in1 = %b in2 = %b in3 = %b expected: out1 = 1 out0 = 0 results: out1 = %b out0 = %b", in[0], in[1], in[2], in[3], out1, out0);
        in[3] = 1; in[2] = 0; in[1] = 0; in[0] = 0; #10;
        $display("in0 = %b in1 = %b in2 = %b in3 = %b expected: out1 = 1 out0 = 1 results: out1 = %b out0 = %b", in[0], in[1], in[2], in[3], out1, out0);

        $finish;
    end
endmodule
