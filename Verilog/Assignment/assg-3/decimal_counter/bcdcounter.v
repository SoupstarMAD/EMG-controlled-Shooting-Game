module bcdcounter(clk,o,en);
input clk;
output[15:0] o;
output en;
reg[3:0] a=0,b=0,c=0,d=0;
assign {o[3:0],o[7:4],o[11:8],o[15:12]}={a,b,c,d};
always @(posedge clk ) begin
    if (a==4'b1001) begin
        a=4'b0000;
        if (b==4'b1001) begin
            b=4'b0000;
            if (c==4'b1001) begin
                c=4'b0000;
                if (d==4'b1001) begin
                    d=4'b0000;
                end else begin
                    d=d+4'b0001;
                end
            end else begin
                c=c+4'b0001;
            end
        end else begin
            b=b+4'b0001;
        end

        
    end else begin
    a=a+4'b0001;    
    end
    


 


     
    
end
endmodule