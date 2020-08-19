class Controller
    
    
    def update_board
        valid_move
        if @counter.even? && valid_move.is_a?(Numeric)
            puts "#{player_one.current_user}".cyan + ' mark your'.white + ' X'.cyan + ' in a number'.white
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
        def tie
          if @counter == 9
              puts "Its a tie, try again!".white
              game
          else
              false
          end
      end
end

