module DEMUX1x4(
    input [1:0]sel,
    input in,
    output [3:0]out
    );

    always @(*)begin
        case (sel)
            2'd0: {4'd0, 4'd0, 4'd0, in};
            2'd1: {4'd0, 4'd0, in, 4'd0};
            2'd2: {4'd0, in, 4'd0, 4'd0};
            2'd3: {in, 4'd0, 4'd0, 4'd0};
            default: out = 4'd0;
        endcase
    end

endmodule