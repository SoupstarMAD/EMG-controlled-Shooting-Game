module D_FF(A,CLK,Z
);
input A,CLK;
output  Z;
reg D=0;
assign Z=D;
always @(posedge CLK) begin
    D=A;
end

endmodule
