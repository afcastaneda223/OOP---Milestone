require 'colorize'

 class Interface
   
    def initialize(board)
        @board = board      
    end
    board = %w[1 2 3 4 5 6 7 8 9]
    def grid(x)
        puts "#{x[0]} | #{x[1]} | #{x[2]}"
        puts "---------"
        puts "#{x[3]} | #{x[4]} | #{x[5]}"
        puts "---------"
        puts "#{x[6]} | #{x[7]} | #{x[8]}"
    end

    def current_board
        grid(@board)
    end
    @display_board = Interface.new(board)

    puts  @display_board.current_board
    


   
    

    def validate (player_move)
        @board.detect{|x| x == player_move.to_s}
    end

    def try_again
        puts "Enter a valid move"
        valid_move
    end

    def valid_move 
    validate(gets.chomp).to_i || try_again
    end
    puts grid(@board) 
 end
 



