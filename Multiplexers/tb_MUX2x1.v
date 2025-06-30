`timescale 1ns/1ps

module tb_MUX2x1;
    wire out;
    reg in0;
    reg in1;
    reg sel;

    MUX2x1 uut(
        .out(out),
        .in0(in0),
        .in1(in1),
        .sel(sel)
    );

    initial begin
        $dumpfile("2x1MUXwaveform.vcd");
        $dumpvars(0, tb_MUX2x1);

        sel = 0; in0 = 0; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 0; in0 = 0; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 0; in0 = 1; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 0; in0 = 1; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 1; in0 = 0; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 1; in0 = 0; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 1; in0 = 1; in1 = 0; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);
        sel = 1; in0 = 1; in1 = 1; #10;
        $display("input_1 = %b, input_2 = %b, select_line = %b, output = %b", in0, in1, sel, out);

        $finish;
    end
endmodule