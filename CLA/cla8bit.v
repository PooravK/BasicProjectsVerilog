//Project name: Carry lookahead Adder
//Date created: 19-07-2025

/*
Basic concept:
Unlike RCA which waits for carry output from the previous adder unit, the CLA basically predicts all the carry input value at same time, allowing for simultaneous addition.
Basically leads to a faster computation time than the ripple carry adder.
*/

//using 1 bit adder module for creating 4 bit adder module
module cla4bit (
    input [3:0]in0,
    input [3:0]in1,
    input [3:0]p,
    input [3:0]g,
    input cin,
    output [3:0]sum,
    output cout
    );

    wire c1;
    wire c2;
    wire c3;
    wire c4;

    assign c1 = g[0] | p[0] & cin;
    assign c2 = g[1] | p[1] & c1;
    assign c3 = g[2] | p[2] & c2;
    assign c4 = g[3] | p[3] & c3;
    assign cout = c4;

    adder1bit instance1 (
        .in0(in0[0]), 
        .in1(in1[0]), 
        .p(p[0]), 
        .g(g[0]), 
        .cin(cin), 
        .sum(sum[0]), 
        .cout(c1));
    adder1bit instance2 (
        .in0(in0[1]), 
        .in1(in1[1]), 
        .p(p[1]), 
        .g(g[1]), 
        .cin(c1), 
        .sum(sum[1]), 
        .cout(c2));
    adder1bit instance3 (
        .in0(in0[2]), 
        .in1(in1[2]), 
        .p(p[2]), 
        .g(g[2]), 
        .cin(c2), 
        .sum(sum[2]), 
        .cout(c3));
    adder1bit instance4 (
        .in0(in0[3]), 
        .in1(in1[3]), 
        .p(p[3]), 
        .g(g[3]), 
        .cin(c3), 
        .sum(sum[3]), 
        .cout(c4));

endmodule

//1 bit addition module
module adder1bit (
    input in0, in1, cin,
    output sum, p, g, cout
    );

    assign p = in0 ^ in1;
    assign g = in0 & in1;
    assign sum = p ^ cin;
    assign cout = g | p & cin;
endmodule