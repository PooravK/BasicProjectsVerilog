module fullsubtractor(
    input in0, in1, bin,
    output sub, bout
    );

    assign sub = in0 ^ in1 ^ bin;
    assign bout = (~in0 & in1) | (in1 & bin) | (~in0 & bin);

endmodule