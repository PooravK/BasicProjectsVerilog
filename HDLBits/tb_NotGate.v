`timescale 1ns/1ps //Time scale declaration - Unit of time/Unit of precision

module tb_NotGate; //Just for testing, no inputs or outputs needed here
    reg in; //reg is used for inputs
    wire out; //wire is used for outputs

    NotGate uut(
        .in(in),
        .out(out)
    ); //Making a copy of the original NOT gate model here. Connects in to in and out to out.

    initial begin //Block where simulation starts, inputs changed, delay inserted between changes and outputs recorded.
        $dumpfile ("waveform.vcd"); // Tells simulator where to save the waveform data
        $dumpvars(0, tb_NotGate); // Starts collecting signals from tb_NotGate to log
    
        in = 0; #10; // #10 means wait for 10 nanoseconds
        in = 1; #10;

        $display("in = %b, out = %b", in, out); //For visual debugging
        $finish;
    end
endmodule