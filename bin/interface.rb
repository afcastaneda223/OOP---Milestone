require 'colorize'

class Interface

    @board = %w[1 2 3 4 5 6 7 8 9]

    def grid(board)
        puts "#{board[0]} | #{board[1]} | #{board[2]}"
        puts "---------"
        puts "#{board[3]} | #{board[4]} | #{board[5]}"
        puts "---------"
        puts "#{board[6]} | #{board[7]} | #{board[8]}"
    end

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
end


