`timescale 1ns/1ns
`include "D_FF.v"
module D_FF_test();
reg A,CLK=1;
wire Z;
D_FF uut(A,CLK,Z);
always begin
    CLK=~CLK;#10;
end
initial begin
    $dumpfile("D_FF_test.vcd");
    $dumpvars(0,D_FF_test);
    A=0;#20;
    A=1;#20;
    A=0;#20;
    A=1;#20;
    $stop;
end
endmodule
 
 