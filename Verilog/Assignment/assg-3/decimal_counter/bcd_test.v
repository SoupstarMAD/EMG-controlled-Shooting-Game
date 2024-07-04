`timescale 1ns/1ns
`include "bcdcounter.v"

module bcd_test(
);
reg clk=0;
wire [15:0] o;
wire en;
bcdcounter uut(clk,o,en);
always begin
clk=~clk;#10;
    
end
initial begin
    $dumpfile("bcd_test.vcd");
    $dumpvars(0,bcd_test);
    #220;
    $stop;
end
    
endmodule