module S_Rlatch (s,r,q,p);
 input s,r;
 output q,p;  
 
 nor(q,r,p);
 nor(p,q,s);


endmodule