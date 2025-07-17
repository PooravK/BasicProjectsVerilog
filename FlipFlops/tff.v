module tff(
    input t, tin, clk, reset
    output reg q
    );
    assign tin = t ^ q;
    always @(posedge clk or posedge reset)begin
        if (reset)begin
            q = 1'b0;
        end
        else begin
            q = 1'b1;
        end
    end
endmodule