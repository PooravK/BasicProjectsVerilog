module Decoder3x8(
    input [2:0]in,
    input en,
    output reg [7:0]out
    );
    //My initial implementation
    /*assign out[0] = (~in[2]) & (~in[1]) & (~in[0]);
    assign out[1] = (~in[2]) & (~in[1]) & (in[0]);
    assign out[2] = (~in[2]) & (in[1]) & (~in[0]);
    assign out[3] = (~in[2]) & (in[1]) & (in[0]);
    assign out[4] = (in[2]) & (~in[1]) & (~in[0]);
    assign out[5] = (in[2]) & (~in[1]) & (in[0]);
    assign out[6] = (in[2]) & (in[1]) & (~in[0]);
    assign out[7] = (in[2]) & (in[1]) & (in[0]);*/

    //Implementation after learning about vectors:
    //assign out = 1 << in;

    //Implementation after learning about always blocks:
    always @(*) begin
        if (en)
            out = 1 << in;
        else
            out = 8'b00000000;
    end

endmodule