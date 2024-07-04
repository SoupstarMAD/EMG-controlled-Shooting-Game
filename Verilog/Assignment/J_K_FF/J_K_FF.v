module J_K_FF (J,K,CLK,Z
);
input J,K,CLK;
output Z;
reg D=0;
assign Z=D;
always @(posedge CLK ) begin
    D=(J&&~D)||(D&&~K);
    
end
    
endmodule