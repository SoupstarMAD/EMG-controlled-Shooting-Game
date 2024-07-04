module T_FF(T,CLK,D
);
input CLK,T;

reg D=0;


always @(posedge CLK) begin
    if (T==1) begin
        D=~D;
    end else begin
        D=D;
    end
    
    
end

endmodule
