module adder (A,B,Ca,Su);
    input A,B;
    output Ca,Su;
    xor (Su,A,B);
    and (Ca,A,B);
    
    
endmodule