module moore(reset,clk,ip,op);
input reset,ip,clk;
output op;
reg ps=0,ns=0;
assign op=ps;
always @(posedge reset or posedge clk) begin
    if (reset) begin
        ps=1;
    end else begin
         
         ns=~(ip ^ ps);
         ps=ns;
    end
end
 


endmodule