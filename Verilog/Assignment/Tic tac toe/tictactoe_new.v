module tictactoe_new(
     clk,
     rst,
   
    row,
     column,
    enter,//for conforming input
     winner,
    pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9
);

    input clk;
    input rst;
  
    
    input  [1:0] row;
    input  [1:0] column;
    input  enter;//for conforming input
    output [1:0] winner;
    output [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;

// Parameter declarations
parameter X_PLAYER = 2'b01;
parameter O_PLAYER = 2'b10;
parameter EMPTY = 2'b00;

// Internal signals
reg [1:0] current_player;
reg [1:0]  po1, po2, po3, po4, po5, po6, po7, po8, po9;
reg [8:0] pos_occupancy;
reg [1:0] game_winner;
reg [2:0] move[1:0];
reg valid_move,check_winner;
integer k, j,i;
assign winner = game_winner;


assign pos1 = po1;
assign pos2 = po2;
assign pos3 = po3;

assign pos4 = po4;
assign pos5 = po5;
assign pos6 = po6;

assign pos7 = po7;
assign pos8 = po8;
assign pos9 = po9;

// Initializations
initial begin
    current_player = X_PLAYER;
    game_winner = EMPTY;
     pos_occupancy = 9'b000000000; // Initially all positions are empty
    po1 = EMPTY;
    po2 = EMPTY;
    po3 = EMPTY;
    po4 = EMPTY;
    po5 = EMPTY;
    po6 = EMPTY;
    po7 = EMPTY;
    po8 = EMPTY;
    po9 = EMPTY;
    move[0]=EMPTY;
    move[1]=EMPTY;
    valid_move=1;
end

// Game logic
always @(posedge clk or rst or enter) begin

    if (rst || game_winner==2'b01 || game_winner==2'b10 || pos_occupancy == 9'b111111111) begin
        current_player = X_PLAYER;
        game_winner = EMPTY;
        //  integer k=0, j=0;
    pos_occupancy = 9'b000000000; // Reset occupancy status
        // Reset individual position variables
        po1 = EMPTY;
        po2 = EMPTY;
        po3 = EMPTY;
        po4 = EMPTY;
        po5 = EMPTY;
        po6 = EMPTY;
        po7 = EMPTY;
        po8 = EMPTY;
        po9 = EMPTY;
        move[0]=EMPTY;
        move[1]=EMPTY;
    end 
    
    if(enter)begin
            if (current_player==X_PLAYER)
                $display("X_PLAYER'S MOVE:)");
            if(current_player==O_PLAYER)
                $display("O_PLAYER'S MOVE:)");
            
            $display("");



             move[0]=row;
             move[1]=column;

                if (move[0] < 3 && move[1] < 3 && (pos_occupancy[move[0]*3 + move[1]] == 0)) begin
                valid_move=1; // Valid move
                end
                else begin
                valid_move=0;// Invalid move
                end
 
            
        
        
        if (valid_move) begin
            pos_occupancy[move[0]*3 + move[1]] = 1;



            
             if (move[0] == 2'b00 && move[1] == 2'b00) begin
       po1 <= current_player;
end else if (move[0] == 2'b00 && move[1] == 2'b01) begin
    po2 = current_player;
end else if (move[0] == 2'b00 && move[1] == 2'b10) begin
    po3 = current_player;
end else if (move[0] == 2'b01 && move[1] == 2'b00) begin
    po4 = current_player;
end else if (move[0] == 2'b01 && move[1] == 2'b01) begin
    po5 = current_player;
end else if (move[0] == 2'b01 && move[1] == 2'b10) begin
    po6 = current_player;
end else if (move[0] == 2'b10 && move[1] == 2'b00) begin
    po7 = current_player;
end else if (move[0] == 2'b10 && move[1] == 2'b01) begin
    po8 = current_player;
end else if (move[0] == 2'b10 && move[1] == 2'b10) begin
    po9 = current_player;
end else begin
    // Invalid move, do nothing
end

        

     if ((po1 == current_player && po2 == current_player && po3 == current_player) ||
        (po4 == current_player && po5 == current_player && po6 == current_player) ||
        (po7 == current_player && po8 == current_player && po9 == current_player) ||
        (po1 == current_player && po4 == current_player && po7 == current_player) ||
        (po2 == current_player && po5 == current_player && po8 == current_player) ||
        (po3 == current_player && po6 == current_player && po9 == current_player) ||
        (po1 == current_player && po5 == current_player && po9 == current_player) ||
        (po3 == current_player && po5 == current_player && po7 == current_player)) begin
        check_winner = 1; // Winner found
    end
    else begin
        check_winner = 0;
    end

         if (check_winner) begin
                game_winner = current_player;
            end else begin
                // Switch player
                #1;
                current_player = (current_player == X_PLAYER) ? O_PLAYER : X_PLAYER;
            end

          // Display the Tic-Tac-Toe board
case (po1)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po2)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po3)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase
$display("");

case (po4)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po5)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po6)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase
$display("");

case (po7)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po8)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase

case (po9)
    0: $write(". ");
    1: $write("X ");
    2: $write("O ");
    default: $write(". ");
endcase
$display("");
$display("");

   
 if (game_winner==X_PLAYER)
      $display("X_PLAYER WON THE GAME :)");
 if(game_winner==O_PLAYER)
      $display("O_PLAYER WON THE GAME :)");
 if (check_winner == 0 && pos_occupancy == 9'b111111111)
      $display("DRAW -_-");




         end
    else begin
        $display("INVALID MOVE :(");
        $display("");
    end  

       
    end
end



endmodule
