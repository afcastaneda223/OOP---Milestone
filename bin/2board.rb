class Board  
  
  def inicialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @counter = 0
  end

  def grid(board)
    puts ' '
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts '---------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts '---------'
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end
  
  def print_board
    puts grid(@board)
  end
    
  def validate(player_move)
    @board.detect { |x| x == player_move.to_s }
  end
  
  def try_again
    puts 'Enter a valid move'
    valid_move
  end
  
  def valid_move
    validate(gets.chomp) || try_again
  end
  
  def update_board_x
      puts @player_one.current_user.to_s.cyan + ' mark your'.white + ' X'.cyan + ' in a number'.white
      @board[valid_move.to_i - 1] = 'X'.cyan
  end
  def update_board_0
      puts @player_two.current_user.to_s.green + ' mark your'.white + ' O'.green + ' in a number'.white
      @board[valid_move.to_i - 1] = 'O'.green
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
  
  def win(arg)
    WIN_COMBINATIONS.each do |w|
     true if (arg[w[0]] == arg[w[1]]) && (arg[w[1]] == arg[w[2]])
    end
    result
  end

  def winner
    win(@board)
  end


end