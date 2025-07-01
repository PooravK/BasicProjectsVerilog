`timescale 1ns/1ps

module tb_Decoder3x8();
    reg [2:0]in;
    wire [7:0]out;

    Decoder3x8 uut(
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("decoder3x8waveform.vcd");
        $dumpvars(0, tb_Decoder3x8);

        in[2] = 0; in[1] = 0; in[0] = 0; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 0; in[1] = 0; in[0] = 1; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 0; in[1] = 1; in[0] = 0; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 0; in[1] = 1; in[0] = 1; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 1; in[1] = 0; in[0] = 0; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 1; in[1] = 0; in[0] = 1; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 1; in[1] = 1; in[0] = 0; #10;
        $display("input = %b | output = %b", in, out);
        in[2] = 1; in[1] = 1; in[0] = 1; #10;
        $display("input = %b | output = %b", in, out);
        $finish;
    end
endmodule
