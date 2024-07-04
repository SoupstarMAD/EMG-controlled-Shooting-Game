`timescale 1ns/1ns
`include "3bitadder.v"


module adder_test (
);
reg[3:0] A,B;
wire[3:0] S;
wire C;
fulladder uut(A,B,S,C);

initial begin
    $dumpfile("adder_test.vcd");
    $dumpvars(0,adder_test);
    A=4'b0010;#20;
    B=4'b0011;
    #20;

    $stop;
end
    
endmodule