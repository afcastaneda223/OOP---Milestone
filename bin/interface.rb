class Interface

    @board = %w[1 2 3 4 5 6 7 8 9]
    @counter = 0

    def grid(board)
        puts "#{board[0]} | #{board[1]} | #{board[2]}"
        puts "---------"
        puts "#{board[3]} | #{board[4]} | #{board[5]}"
        puts "---------"
        puts "#{board[6]} | #{board[7]} | #{board[8]}"
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

    def validate (player_move)
        @board.detect{|x| x == player_move.to_s}
    end

    def try_again
        puts "Enter a valid move"
        valid_move
        
    end

    def valid_move 
    validate(gets.chomp) || try_again
    end

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

    def win
    WIN_COMBINATIONS.each do |w|
        true if (x[w[0]] == x[w[1]]) && (x[w[1]] == x[w[2]])
            end
        false
        end
    end
end