`timescale 1ns/1ps

module tb_tff();
    reg t;
    reg tin;
    reg clk;
    reg reset;
    wire q;

    tff uut(
        .t(t),
        .tin(tin),
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial begin
        
    end

    always #5 clk = ~clk;