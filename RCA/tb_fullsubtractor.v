`timescale 1ns/1ps

module tb_fullsubtractor();

    reg in0; 
    reg in1;
    reg bin;
    wire bout;
    wire sub;

    fullsubtractor uut (
        .in0(in0),
        .in1(in1),
        .bin(bin),
        .bout(bout),
        .sub(sub)
    );

    initial begin
        $dumpfile("fullsubtractorwaveform.vcd");
        $dumpvars(0, tb_fullsubtractor);

        in0 = 0; in1 = 0; bin = 0; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 0; in1 = 0; bin = 1; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 0; in1 = 1; bin = 0; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 0; in1 = 1; bin = 1; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 1; in1 = 0; bin = 0; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 1; in1 = 0; bin = 1; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 1; in1 = 1; bin = 0; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);
        in0 = 1; in1 = 1; bin = 1; #10;
        $display("input 1 = %b input 2 = %b bin = %b | sub = %b | bout = %b", in0, in1, bin, sub, bout);

        $finish;
    end
endmodule