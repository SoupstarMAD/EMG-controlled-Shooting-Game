`timescale 1ns/1ns
`include "S_Rlatch.v"
module S_R_t ();
 reg s,r;
 wire q,p;
S_Rlatch uut(s,r,q,p);
 initial begin
   $dumpfile("S_R_t.vcd");
   $dumpvars(0,S_R_t);
    {s,r}=2'b00;#20;
    {s,r}=2'b01;#20;    
    {s,r}=2'b10;#20;    
     
    {s,r}=2'b00;#20;
     
    {s,r}=2'b10;#20;    
    {s,r}=2'b01;#20; 
    {s,r}=2'b00;#20;    
 end
    
endmodule