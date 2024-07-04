`timescale 1ns/1ns
`include "decode.v"
module decoder_t();
reg[2:0]A;

wire[7:0]Y;
decode uut(A,Y);

initial begin
    $dumpfile("decoder_t.vcd");
    $dumpvars(0,decoder_t);
    A=3'd1;#20;
    A=3'd3;#20;
end
endmodule
 
 