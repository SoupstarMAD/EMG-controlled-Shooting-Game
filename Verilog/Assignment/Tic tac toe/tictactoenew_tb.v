`timescale 1ns/1ns
`include "tictactoe_new.v"


module tictactoenew_tb;

    // Inputs
    reg clk=0;
    reg rst;
   
    reg [1:0] row;
    reg [1:0] column;
    reg enter=0;  // Trigger to confirm input

    // Outputs
    wire [1:0] winner;
    wire [1:0]  pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;

    // Instantiate the tictactoenew module
    tictactoe_new uut (
        .clk(clk),
        .rst(rst),
        
        .row(row),
        .column(column),
        .enter(enter),
        .winner(winner),
        .pos1(pos1),
        .pos2(pos2),
        .pos3(pos3),
        .pos4(pos4),
        .pos5(pos5),
        .pos6(pos6),
        .pos7(pos7),
        .pos8(pos8),
        .pos9(pos9)
    );

    // Clock generation
    always  begin
        
    
        
       #5; clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        $dumpfile("tictactoenew_tb.vcd");
        $dumpvars(0,tictactoenew_tb);
        rst = 1;
         // X_PLAYER
        enter = 0;
        row = 2'b00;
        column = 2'b00;
        

        // Apply reset and wait for a few clock cycles
        #10 ;rst = 0;
        

        // Play some moves
        #30 ; row = 2'b00; column = 2'b10;#05; enter = 1;#5; enter = 0; // X_PLAYER, (row=1, col=3)
        #30; row = 2'b01; column = 2'b00;#5; enter = 1;#5; enter = 0;  // O_PLAYER, (row=2, col=1)
        #30 ; row = 2'b10; column = 2'b10;#5; enter = 1;#5; enter = 0;  // X_PLAYER, (row=3, col=3)
        #30 ; row = 2'b10; column = 2'b10;#5; enter = 1;#5; enter = 0;  // O_PLAYER, (row=3, col=3)//invalid
        #30 ; row = 2'b01; column = 2'b01;#5; enter = 1;#5; enter = 0; // O_PLAYER, (row=2, col=1)
        #30 ; row = 2'b01; column = 2'b10;#5; enter = 1;#5; enter = 0; // X_PLAYER, (row=2, col=1)
        
        // // Add more test scenarios as needed

        // End simulation after some time
        #20;$finish;
    end

    

endmodule
