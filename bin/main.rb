require_relative '../lib/logic.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require 'colorize'
require 'artii'

class Greetings
  attr_reader :player_one, :player_two
  def welcome
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
end

class TicTacToe
  private

  def initialize
    @my_board = Board.new
    @my_logic = Logic.new
    @counter = 0
    @my_greetings = Greetings.new
  end

  def validate(player_move)
    @my_board.board.detect { |x| x == player_move.to_s }
  end

  def try_again
    puts 'Enter a valid move'
    valid_move
  end

  def valid_move
    validate(gets.chomp) || try_again
  end

  def update_board
    puts @my_board.grid
    puts ' '
    if @counter.even?
      puts ' '
      puts @my_greetings.player_one.name.cyan + ' Choose a number from 1 to 9'.white
      puts ' '
      @my_board.board[valid_move.to_i - 1] = 'X'.cyan
    elsif @counter.odd?
      puts @my_greetings.player_two.name.green + ' Choose a number from 1 to 9'.white
      puts ' '
      @my_board.board[valid_move.to_i - 1] = 'O'.green
    end
    @counter += 1
  end

  public

  def play
    @my_greetings.welcome
    while @counter < 10
      if @counter == 9 && !@my_logic.win(@my_board.board)
        puts @my_board.grid
        puts ' TIE GAME, Start again!'
        @counter = 10
      elsif !@my_logic.win(@my_board.board)
        puts update_board
      elsif @my_logic.win(@my_board.board)
        if @counter.odd?
          puts @my_greetings.player_one.name.cyan + ' is the Winner!!'.white
          puts @my_board.grid
          @counter = 10
        elsif @counter.even?
          puts @my_greetings.player_two.name.green + ' is the Winner!!'.white
          puts @my_board.grid
          @counter = 10
        end
      end
    end
  end
end

juego = TicTacToe.new
juego.play
