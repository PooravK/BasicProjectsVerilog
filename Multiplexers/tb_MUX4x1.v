`timescale 1ns/1ps

module tb_MUX4x1;
    reg in0;
    reg in1;
    reg in2;
    reg in3;
    reg [3:0]inputs;
    reg [1:0]sel;
    wire out;
    integer i;

    MUX4x1 uut(
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("4x1MUXwaveform.vcd");
        $dumpvars(0, tb_MUX4x1);

        for(i = 0; i < 16; i = i + 1) begin
            inputs = i[3:0];
            in0 = inputs[0];
            in1 = inputs[1];
            in2 = inputs[2];
            in3 = inputs[3];

            sel = 2'b00; #10;
            $display("sel = %b, inputs = %b, out = %b", sel, inputs, out);
            sel = 2'b01; #10;
            $display("sel = %b, inputs = %b, out = %b", sel, inputs, out);
            sel = 2'b10; #10;
            $display("sel = %b, inputs = %b, out = %b", sel, inputs, out);
            sel = 2'b11; #10;
            $display("sel = %b, inputs = %b, out = %b", sel, inputs, out);
        end
        $finish;
    end
endmodule