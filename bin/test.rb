@board = %w[1 2 3 4 5 6 7 8 9]

def initialize(name,symbol)
    @name = name
    @symbol = symbol
end

def validate (player_move)
    @board.detect{|x| x == player_move.to_s}
end

def try_again
    puts "Enter a valid move"
    valid_move
end

def valid_move 
  puts 'Pick a number for your move'
  validate(gets.chomp) || try_again
end

def game 


def play 
    tie_counter = 0
    while !win && tie_counter < 9
        puts @board
        if valid_move 
            tie_counter += 1
            board[valid_move - 1] = "X".red
            change_player
        end
    end
end
puts valid_move



