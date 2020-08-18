case winner
when (board[0] && board[1] && board[2]) || (board[3] && board[4] && board[5]) || (board[6] && board[7] && board[8])|| (board[0] && board[4] && board[8]) (board[3] && board[4] && board[6]) == "X"
    return "player one wins" 
when (board[0] && board[1] && board[2]) || (board[3] && board[4] && board[5]) || (board[6] && board[7] && board[8])|| (board[0] && board[4] && board[8]) (board[3] && board[4] && board[6]) == "O"
    return "Player two wins"
else 
    return "tie"
end

def initialize(name,symbol)
    @@name = name
    @@symbol = symbol
end
