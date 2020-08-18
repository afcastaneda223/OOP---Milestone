@board = %w[1 2 3 4 5 6 7 8 9]
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


puts valid_move

