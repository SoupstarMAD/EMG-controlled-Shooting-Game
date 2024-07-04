module SIPO (data, clk, z0, z1, z2, z3);
  input data, clk;
  output z0, z1, z2, z3;
  reg d0=0, d1=0, d2=0, d3=0;
  assign {z0, z1, z2, z3} = {d0, d1, d2, d3};

  always @(posedge clk) begin
    d3 <= data;
    d2 <= d3;
    d1 <= d2;
    d0 <= d1;
  end
endmodule
