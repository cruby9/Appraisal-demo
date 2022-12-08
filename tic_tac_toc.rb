class Choice
  attr_reader :position, :marker, :name, :tictac
  
  def initialize(tictac, name, marker)
    @tictac = tictac
    @name = name
    @marker = marker
    #@available_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
  end

  def choose_number
      
      loop do
      puts "\n #{@name} enter a number from the grid:"
        position = gets.chomp.to_i
        if @tictac.available_positions.include?(position)
          return position
        else
          puts "\n Number not found!"
        end
      end
    end
  end

class TicTacToe
  WIN_COMBO = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 5, 9],
    [3, 5, 7],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9]
  ]
   
    attr_reader :available_positions
    def initialize
        @board = %w[1 2 3 4 5 6 7 8 9]
        @available_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @player = [ 
          Choice.new(self, 'Player_1', 'X'),
          Choice.new(self, 'Player_2','O')
        ]
        @current_player = @player[0]
    end
      
    def play
      puts "Welcome to TicTacToe!"
      print_board
      loop do 
        print_board
        position = @current_player.choose_number
        edit_available(position)
        @board[position -1] = @current_player.marker

        if winner?(@current_player)
          print_board
          puts "#{@current_player.name} wins!"
          exit

        elsif draw?
          print_board
          puts " It's a draw!"
          exit
        end
      
      switch_player
      end
    end
     

     
      
    
    def print_board
        divider = '--+---+--'
        puts "\n#{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts divider
        puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts divider
        puts "#{@board[6]} | #{@board[7]} | #{@board[8]}\n\n"
    end
    def edit_available(pos)
      @available_positions.delete(pos)
    end

    def switch_player
      @current_player = @current_player == @player[0] ? @player[1] : @player[0]
    end

    def winner?(player)
      WIN_COMBO.any? do |combo|
        combo.all? { |pos| @board[pos - 1] == player.marker }
      end
    end
     
    def draw?
      @available_positions.empty?
    end 
  end
      
 


new_game = TicTacToe.new
new_game.play