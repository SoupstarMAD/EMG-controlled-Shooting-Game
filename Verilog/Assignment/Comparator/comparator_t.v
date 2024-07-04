`timescale 1ns/1ns
`include "comparator.v"

module comparator_t;
reg[2:0] A=0,B=0;
wire F;
comparator uut(A,B,F);
initial begin
    $dumpfile("comparator_t.vcd");
    $dumpvars(0,comparator_t);

    while ({A,B}!=6'd63) begin
      {A,B}={A,B}+6'd1;#10;
    end

    $display("Test completed");
end

endmodule