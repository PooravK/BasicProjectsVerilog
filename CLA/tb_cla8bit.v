`timescale 1ns/1ps

module tb_cla8bit();
    reg [3:0]in0;
    reg [3:0]in1;
    reg cin;
    wire [3:0]sum;
    wire cout;

    cla4bit uut (
        .in0(in0),
        .in1(in1),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("cla4bitwaveform.vcd");
        $dumpvars(0, tb_cla8bit);

        in0 = 4'd0; in1 = 4'd0; cin = 0; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'd0; in1 = 4'd0; cin = 1; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'd15; in1 = 4'd0; cin = 0; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'd15; in1 = 4'd15; cin = 1; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);

        in0 = 4'b1010; in1 = 4'b0101; cin = 0; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'd1; in1 = 4'd15; cin = 1; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'd0; in1 = 4'd15; cin = 1; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        in0 = 4'b0101; in1 = 4'b0101; cin = 1; #10;
        $display("==== CASE ====\nin0 = %b in1 = %b cin = %b | sum = %b | cout = %b |", in0, in1, cin, sum, cout);
        $finish;
    end
endmodule
