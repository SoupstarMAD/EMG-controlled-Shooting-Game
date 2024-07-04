`timescale 1ns/1ns
`include "counter.v"

module counter_test(
);
reg clk=0,rst=0;
wire [3:0] b;
counter uut(rst,clk,b);
always begin
clk=~clk;#10;
    
end
initial begin
    $dumpfile("counter_test.vcd");
    $dumpvars(0,counter_test);
    #72;
    rst=1;#10;
    rst=0;#20;
    $stop;
end
    
endmodule