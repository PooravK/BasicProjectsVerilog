//Name: Asynchronous D Flip-Flop
//Date created: 08-07-2025

//This design is asynchronous which means that the reset or set is in no way dependent on the clock, they both work asynchronously.
module async_dff(
    input d, reset, clk, set,
    output reg q_out = 1'b0,
    output qcomp_out
    );
    assign qcomp_out = ~q_out;
    always @(posedge clk or posedge reset or posedge set)begin
       if (reset)begin //Example of active low reset. For active high reset use (reset).
        q_out <= 1'b0;
       end
       else if (set)begin
        q_out <= 1'b1;
       end
       else begin
        q_out <= d;
       end
    end

endmodule