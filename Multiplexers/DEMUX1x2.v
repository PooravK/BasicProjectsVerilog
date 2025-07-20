module DEMUX1x2(
    input in, sel;
    output [1:0]out;
    );

    always @(*)begin
        case (sel)
            1'b0: out = {1'b0, in};
            1'b1: out = {in, 1'b0};
            default: out = 2'b00;
        endcase
    end
endmodule