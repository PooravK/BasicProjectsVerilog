module PriorityEncoder4x2(
    input [3:0]in,
    output out0, out1
    );
    assign out1 = in[2] | in[3];
    assign out0 = in[3] | in[1]&(~in[2]);
endmodule