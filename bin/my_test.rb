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

class Player
    def initialize(name,symbol)
        @name = name
        @symbol = symbol
        
    end
    def current_user
        @name
    end

    def welcome
        puts "Welcome to Tic Tac Toe game".blue
    end 
      
        puts "Please enter name for player X"
        player_one =   Player.new(gets.chomp, "X")    

      
        puts "Please enter name for player O".green
        player_two =  Player.new(gets.chomp, "O")
    

puts "Welcome ".white + "#{player_one.current_user}".red + " your symbol is X".white
puts "Welcome ".white + "#{player_two.current_user}".green +  " your symbol is O".white

end

class Controller
    
    
    def update_board
        valid_move
        if @counter.even? && valid_move.is_a?(Numeric)
            puts "#{player_one.current_user}".cyan + ' mark your'.white + ' X'.cyan +' in a number'.white
            @board[valid_move - 1] = "X".cyan
            @counter += 1
            puts grid
        else @counter.odd? && valid_move.is_a?(Numeric)
            puts "#{player_one.current_user}".red + ' mark your'.white + ' O'.green + ' in a number'.white
            board[valid_move - 1] = "O".green
            @counter += 1
            puts grid
        end
        
    end

    WIN_COMBINATIONS = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [2, 4, 6],
        [0, 4, 8]
      ]

    def winners(x)
        result = 'No winner'
        WIN_COMBINATIONS.each do |w|
            if x[w[0]] == 'X' && x[w[1]] == 'X' && x[w[2]] == 'X'
            result = 'Player X wins'
            elsif x[w[0]] == 'O' && x[w[1]] == 'O' && x[w[2]] == 'O'
            result = 'Player O wins'
            end
        end
        result
        end
    
        def win(x)
            result = false
          WIN_COMBINATIONS.each do |w|
            if (x[w[0]] == x[w[1]]) && (x[w[1]] == x[w[2]])
                result = true
            end   
          end
            result
        end
end