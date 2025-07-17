module halfadder(
    input in0, in1, cin,
    output sum, cout
    );

    assign sum = in0 ^ in1 ^ cin;
    assign cout = in0 & in1 | in0 & cin | in1 & cin;

endmodule