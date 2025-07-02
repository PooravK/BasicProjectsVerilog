module Comparator4bit(
    input [3:0]in0,
    input [3:0]in1,
    output [3:0]greater,
    output [3:0]smaller,
    output [3:0]equal
    );

    assign greater = (in1 > in0);
    assign smaller = (in1 < in0);
    assign equal = (in1 == in0);

endmodule