module RippleCarry8bit(
    input [7:0]a,
    input [7:0]b,
    input cin,
    output [7:0]sum,
    output cout
    );

    wire connect;

    Adder4bit instance1(.a(a[3:0]), .b(b[3:0]), .cout(connect), .sum(sum[3:0]), .cin(cin));
    Adder4bit instance2(.a(a[7:4]), .b(b[7:4]), .cout(cout), .sum(sum[7:4]), .cin(connect));
endmodule

module Adder4bit(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]sum,
    output cout
    );

    wire connect1;
    wire connect2;
    wire connect3;

    Adder1bit instance1 (.a(a[0]), .b(b[0]), .cout(connect1), .sum(sum[0]), .cin(cin));
    Adder1bit instance2 (.a(a[1]), .b(b[1]), .cin(connect1), .sum(sum[1]), .cout(connect2));
    Adder1bit instance3 (.a(a[2]), .b(b[2]), .cin(connect2), .sum(sum[2]), .cout(connect3));
    Adder1bit instance4 (.a(a[3]), .b(b[3]), .cin(connect3), .sum(sum[3]), .cout(cout));

endmodule

module Adder1bit(
    input a, b, cin,
    output sum, cout
    );

    assign sum = a ^ b ^ cin;
    assign cout = a&b | a&cin | b&cin;

endmodule