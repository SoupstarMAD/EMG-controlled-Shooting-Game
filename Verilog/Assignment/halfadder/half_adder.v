`timescale 1ns/1ns
`include "adder.v"

module half_adder;
reg A,B;
wire Ca,Su;
adder uut(A,B,Ca,Su);



initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder);
    A<=0;B<=0;#20;
    A<=1;B<=0;#20;
    A<=1;B<=1;#20;
    A<=0;B<=1;#20;
    $display("done");

        
end

endmodule