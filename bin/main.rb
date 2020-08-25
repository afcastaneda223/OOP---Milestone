local_dir = File.expand_path(__dir__)
$LOAD_PATH.unshift(local_dir)

require 'board.rb'
require 'Player'
require 'colorize'
require 'artii'

class Welcome < Player
  arter = Artii::Base.new
  puts arter.asciify('TIC TAC TOE')
  puts 'Please enter name for player X'.cyan
  puts ' '
  @player_one = Player.new(gets.chomp)
  puts ' '
  puts 'Please enter name for player O'.green
  puts ' '
  @player_two = Player.new(gets.chomp)
  puts ' '
  puts 'PLAYERS'.red
  puts ' '
  puts 'Welcome '.white + @player_one.name.cyan + ' you are'.white + ' Player X'.cyan
  puts ' '
  puts 'Welcome '.white + @player_two.name.green + ' you are'.white + ' Player O'.green
  puts ' '
  puts 'PLAY TIME'.red
end

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
    elsif @counter.odd?
      puts 'Player O '.green + 'Choose a number from 1 to 9'.white
      puts ' '
      board[valid_move.to_i - 1] = 'O'.green
    end
    @counter += 1
    puts grid
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

  def win(item)
    result = false
    WIN_COMBINATIONS.each do |w|
      if item[w[0]] == 'X'.cyan && item[w[1]] == 'X'.cyan && item[w[2]] == 'X'.cyan
        result = true
      elsif item[w[0]] == 'O'.green && item[w[1]] == 'O'.green && item[w[2]] == 'O'.green
        result = true
      end
    end
    result
  end
end

class Game < Controller
  def play
    while @counter < 10
      if @counter == 9 && !win(board)
        puts ' TIE, Start again'
        @counter = 10
      elsif !win(board)
        puts update_board
      elsif win(board)
        if @counter.odd?
          puts 'Player X'.cyan + ' is the Winner!!'.white
          @counter = 10
        elsif @counter.even?
          puts 'Player O'.green + ' is the Winner!!'.white
          @counter = 10
        end
      end
    end
  end
end
juego = Game.new
juego.play
