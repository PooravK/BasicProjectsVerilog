//Learnt how to build multi-bit wires using vectors to avoid the hassle of multiple wire declarations

module vector0(
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0
    );

    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vex[0];

    assign outv = vec;
endmodule