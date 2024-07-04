`timescale 1ns/1ns
`include "moore.v"

module moore_test();
reg reset=0,clk=1,ip;
wire op;

moore uut(reset,clk,ip,op);
always  begin
    clk=~clk;#10;
end
initial begin
    $dumpfile("moore_test.vcd");
    $dumpvars(0,moore_test);
     ip=1;
    #20;
    ip=0;
 
    #20;
    reset=1;#2;
    reset=0;
    #20;
    ip=1;
    #20;
    ip=0;#20;
    ip=1;

    $stop;
end
    
endmodule