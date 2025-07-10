`timescale 1ns/1ps

module tb_d_ff;
    reg d;
    reg clk;
    reg reset;
    reg set;
    wire q_out;
    wire qcomp_out;

    async_dff uut(
        .d(d),
        .clk(clk),
        .reset(reset),
        .set(set),
        .q_out(q_out),
        .qcomp_out(qcomp_out)
    );

    initial begin
        reset = 0; set = 0; d = 0; #1;
    end

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dffwaveform.vcd");
        $dumpvars(0, tb_d_ff);
        clk = 1'b0;

        reset = 0; set = 0; d = 1; #50;

        reset = 1;#50;
        reset = 0;#50;

        set = 1;#50;
        set = 0;#50;

        d = 1;#1;
        d = 0;#1;

        set = 1; reset = 1; #50;

        set = 0; reset = 0; #50;

        $finish;
    end
endmodule
