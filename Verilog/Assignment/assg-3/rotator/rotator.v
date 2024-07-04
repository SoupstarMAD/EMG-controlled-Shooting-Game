module rotator (load, data, en, q);
   input load;
   input [99:0] data;
   reg [99:0] d = 0;
   input [1:0] en;
   output [99:0] q;

   assign q = d;
   always @(posedge load ) begin
    d=data;
    
   end
   always @(posedge en) begin
     

      if (en == 2'b01) begin
         d = {d[98:0], d[99]};
      end
      else if (en == 2'b10) begin
         d = {d[0], d[99:1]};
      end
   end
endmodule
