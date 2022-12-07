class TicTacToe
    @current_player = @players[0]
    @board = %w[1 2 3 4 5 6 7 8 9]
    @available_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]




    def play
       @board[0] = 3
        print_board
    end

    
    
    def print_board
    divider = '--+---+--'
     puts "\n#{board[0]} | #{board[1]} | #{board[2]}"
     puts divider
     puts "#{board[3]} | #{board[4]} | #{board[5]}"
     puts divider
     puts "#{board[6]} | #{board[7]} | #{board[8]}\n\n"
    end
end

new_game = TicTacToe.new
new_game.play
