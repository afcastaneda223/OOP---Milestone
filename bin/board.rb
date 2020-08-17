board = %w[O 1 2 O O 5 X X O]
# def valid_move (a, b)
#     a.any?{|x| x == b.to_s}
# end

#  puts  valid_move(board, 4)
#  puts  valid_move(board, 1)
#  puts  valid_move(board, 8)
#  puts  valid_move(board, 9)

# #  if valid_move(board,pl_one_x)
# #     #actualizar board
# #  else
#     return "invalid move"
#  end
#  

# # def winner(x)
# #     if  (x[0] && x[3] && x[6]) || (x[1] && x[4] && x[7]) || (x[2] && x[5] && x[8]) == "X"
# #         return "player one wins"
# #     elsif (x[0] && x[1] && x[2]) || (x[3] && x[4] && x[5]) || (x[6] && x[7] && x[8])== "X"
# #         return "player one wins"
# #     elsif (x[0] && x[4] && x[8]) (x[2] && x[4] && x[6] ) == "X"
# #         return "player one wins"
# #     else (x[0] && x[3] && x[6]) || (x[1] && x[4] && x[7]) || (x[2] && x[5] && x[8]) || (x[0] && x[1] && x[2]) || (x[3] && x[4] && x[5]) || (x[6] && x[7] && x[8]) || (x[0] && x[4] && x[8]) (x[3] && x[4] && x[6]) == "O"
# #         return "Player two wins"
# #     end
# # end

def winner(x)
  
  if x[0] == "X" && x[1] == "X" && x[2] == "X"  
    return 'player one wins'   
  else 
    return false
  end
end

puts winner(board)

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

def wins(x)
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
   
puts wins(board)