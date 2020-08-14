board = ["1", "2", "3","X", "5", "6","7", "8", "9"]
def valid_move (board, input)
    if  board.each {|w| w == input}
     true
    else
    false
    end
end

 puts  (valid_move(board, 4))
