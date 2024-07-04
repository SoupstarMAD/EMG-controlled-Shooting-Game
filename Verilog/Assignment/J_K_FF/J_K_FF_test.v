`timescale 1ns/1ns
`include "J_K_FF.v"

module J_K_FF_test (
);
reg J,K,CLK=1;
wire Z;
J_K_FF uut(J,K,CLK,Z);
always  begin
    CLK=~CLK;#10;
end
initial begin
    $dumpfile("J_K_FF_test.vcd");
    $dumpvars(0,J_K_FF_test);
    {J,K}=2'b00;#20;
    {J,K}=2'b01;#20;
    {J,K}=2'b11;#20;
    {J,K}=2'b10;#20;
    {J,K}=2'b00;#20;
    {J,K}=2'b01;#20;
    {J,K}=2'b11;#20;
    {J,K}=2'b10;#20;
    
    $stop;
end
    
endmodule