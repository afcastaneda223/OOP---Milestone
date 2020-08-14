board = ["1", "2", "3","X", "5", "6","7", "O", "9"]
def valid_move (a, b)
    a.any?{|x| x == b.to_s}
end

 puts  valid_move(board, 4)
 puts  valid_move(board, 1)
 puts  valid_move(board, 8)
 puts  valid_move(board, 9)

 if valid_move(board,pl_one_x)
    #actualizar board
 else
    return "invalid move"
 end

def winner(tabl,combinations)
    tabl.any? 