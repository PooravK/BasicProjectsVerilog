//Learnt wire implementation to make logic gate analysis easier and less complex

module chip7458 ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire p1a_p1c_p1b;
    wire p2a_p2b;
    wire p2c_p2d;
    wire p1f_p1e_p1d;
    
    assign p1a_p1c_p1b = ((p1a & p1b) & p1c);
    assign p2a_p2b = (p2a & p2b);
    assign p2c_p2d = (p2c & p2d);
    assign p1f_p1e_p1d = ((p1f & p1e) & p1d);
    
    assign p1y = p1a_p1c_p1b | p1f_p1e_p1d;
    assign p2y = p2a_p2b | p2c_p2d;

endmodule