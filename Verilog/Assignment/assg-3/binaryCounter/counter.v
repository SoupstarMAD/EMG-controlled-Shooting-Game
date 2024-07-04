module counter (rst,clk,b);
input rst,clk;
output [3:0]b;
reg[3:0] d=4'b0000;
assign b=d;
always @(posedge clk or rst) begin
    if (d==4'b1111 || rst) begin
        d=4'b0000;
    end else begin
        d=d+4'b0001;
    end
    
    
end
    
endmodule