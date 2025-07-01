`timescale 1ns/1ps

module tb_Decoder3x8();
    reg [2:0]in;
    reg en;
    wire [7:0]out;

    Decoder3x8 uut(
        .in(in),
        .out(out),
        .en(en)
    );

    initial begin
        $dumpfile("decoder3x8waveform.vcd");
        $dumpvars(0, tb_Decoder3x8);

        in[2] = 0; in[1] = 0; in[0] = 0; en = 0; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 0; in[1] = 0; in[0] = 0; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 0; in[1] = 0; in[0] = 1; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 0; in[1] = 1; in[0] = 0; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 0; in[1] = 1; in[0] = 1; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 1; in[1] = 0; in[0] = 0; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 1; in[1] = 0; in[0] = 1; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 1; in[1] = 1; in[0] = 0; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        in[2] = 1; in[1] = 1; in[0] = 1; en = 1; #10;
        $display("Enable = %b | input = %b | output = %b", en, in, out);
        $finish;
    end
endmodule
