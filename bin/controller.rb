local_dir = File.expand_path(__dir__)
$LOAD_PATH.unshift(local_dir)
require 'board.rb'
require 'colorize'
require 'artii'
class Controller < Board
  private

    def validate(player_move)
      board.detect { |x| x == player_move.to_s }
    end

    def try_again
      puts 'Enter a valid move'
      valid_move
    end

    def valid_move
      validate(gets.chomp) || try_again
    end

    def update_board
      if @counter.even?
        puts ' '
        puts 'Player X '.cyan + 'Choose a number from 1 to 9'.white
        puts ' '
        board[valid_move.to_i - 1] = 'X'.cyan
        @counter += 1
        puts grid
      else @counter.odd?
           puts 'Player O '.green + 'Choose a number from 1 to 9'.white
           puts ' '
           board[valid_move.to_i - 1] = 'O'.green
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
    ].freeze

    def win(x)
      result = false
      WIN_COMBINATIONS.each do |w|
        if x[w[0]] == 'X'.cyan && x[w[1]] == 'X'.cyan && x[w[2]] == 'X'.cyan
          result = true
        elsif x[w[0]] == 'O'.green && x[w[1]] == 'O'.green && x[w[2]] == 'O'.green
          result = true
        end
      end
      result
    end
  end
