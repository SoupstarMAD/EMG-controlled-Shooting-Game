module FA (a,b,cin,s,cout
);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(cin&(a^b))|(a&b);
    
endmodule

module fulladder (A,B,S,C
);
input [3:0] A,B;
output[3:0] S;
output C;
wire[2:0] x;
FA FA0(A[0],B[0],1'b0,S[0],x[0]);
FA FA1(A[1],B[1],x[0],S[1],x[1]);
FA FA2(A[2],B[2],x[1],S[2],x[2]);
FA FA3(A[3],B[3],x[2],S[3],C);

    
endmodule