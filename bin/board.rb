board = %w[1 2 3 4 5 6 7 8 9]
def validate (board, player_input)
    board.detect{|x| x == player_input.to_s}
end

def valid_move 
  puts 'Pick a number for your move'
  validate(board,gets.chomp) || valid_move
end

#macro

# #  if valid_move(board,pl_one_x)
# #     #actualizar board
# #  else
#     return "invalid move"
#  end
#  


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

def winers(x)
  result="No winner"
  WIN_COMBINATIONS.each do |w|
    if x[w[0]] == "X" && x[w[1]] == "X" && x[w[2]] == "X" 
       result="Player X wins"
    elsif x[w[0]] == "O" && x[w[1]] == "O"  && x[w[2]] == "O"
        result= "Player O wins"
    end
  end
  return result
end
   

def win
  WIN_COMBINATIONS.each do |w|
    if (x[w[0]] == x[w[1]]) && (x[w[1]] == x[w[2]])
       true
    end
  end
  false
end

puts wins(board)