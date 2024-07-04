`timescale 1ns/1ns
`include "rotator.v"

module test();
reg load=0;
reg [99:0] data=0;
reg [1:0] en=0;
wire [99:0] q;

rotator uut(load,data,en,q);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
    #20;
    data=100'b0;
    data[99]=1'b1;
    data[0]=1'b1;
    #20;
    load=1'd1;
    #1;
    load=1'd0;
    #20;
    en=2'b01;#1;
    en=0;
    #30;
    en=2'b10;#1;
    en=0;
    #30;
    $stop;
end
    
endmodule