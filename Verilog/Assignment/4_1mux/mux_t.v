`timescale 1ns/1ns
module mux( a0, a1, a2, a3, s0, s1, o);
input a0, a1, a2, a3, s0, s1;
output o;
    assign o = (s0 == 1'b0) ? ((s1 == 1'b0) ? a0 : a2) : ((s1 == 1'b0) ? a1 : a3);
endmodule

module mux_t;
reg [3:0]A;
reg[1:0]S;
wire o;
mux uut(
        A[0],A[1],A[2],A[3],S[0],S[1],o
    );

initial begin
    $dumpfile("mux_t.vcd");
    $dumpvars(0,mux_t);
    A=4'b1011;#20;
    S=2'b10;
    #20;

        
end

endmodule