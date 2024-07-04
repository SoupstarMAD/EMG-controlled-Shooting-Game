`timescale 1ns/1ns
`include "SIPO.v"

module SIPO_test (
);
reg data,clk=1;
wire z0,z1,z2,z3;
SIPO uut(data,clk,z0,z1,z2,z3);
always  begin
    clk=~clk;#10;
end
initial begin
    $dumpfile("SIPO_test.vcd");
    $dumpvars(0,SIPO_test);
    data=0;#10;
    data=1;#20;
    data=0;#10;
    #120;   
    $stop;
end
    
endmodule