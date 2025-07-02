`timescale 1ns/1ps

module tb_Comparator4bit();
    reg [3:0]in0;
    reg [3:0]in1;
    wire [3:0]greater;
    wire [3:0]smaller;
    wire [3:0]equal;

    Comparator4bit uut(
        .in0(in0),
        .in1(in1),
        .greater(greater),
        .smaller(smaller),
        .equal(equal)
    );

    initial begin
        $dumpfile("comparactorwaveform.vcd");
        $dumpvars(0, tb_Comparator4bit);

        in0 = 4'b0000; in1 = 4'b0000; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b1000; in1 = 4'b0000; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b0000; in1 = 4'b1000; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b1111; in1 = 4'b1111; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b1110; in1 = 4'b0111; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b0001; in1 = 4'b0000; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b0000; in1 = 4'b0001; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b0001; in1 = 4'b1000; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b1000; in1 = 4'b0001; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b0000; in1 = 4'b1111; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);
        in0 = 4'b1111; in1 = 4'b1111; #10;
        $display("input1 = %b input0 = %b | Greater: %b | Smaller: %b | Equal: %b |", in1, in0, greater[0], smaller[0], equal[0]);

        $finish;
    end
endmodule
