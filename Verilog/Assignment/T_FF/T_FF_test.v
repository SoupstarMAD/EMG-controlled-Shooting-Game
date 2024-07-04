`timescale 1ns/1ns
`include "T_FF.v"
module T_FF_test();
reg T,CLK=1;
wire Z;
T_FF uut(T,CLK,Z);
always begin
    CLK=~CLK;#10;
end
initial begin
    $dumpfile("T_FF_test.vcd");
    $dumpvars(0,T_FF_test);
    T=1'b0;#20;
    T=1'b1;#20;
    T=1'b0;#20;
    T=1'b1;#20;
    
    
    
    $stop;
end
endmodule
 
 