require 'colorize'

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def current_user
    @name
  end
  puts 'Welcome to Tic Tac Toe game'.blue

  puts 'Please enter name for player X'.cyan
  @player_one = Player.new(gets.chomp, 'X')

  puts 'Please enter name for player O'.green
  @player_two = Player.new(gets.chomp, 'O')

  puts 'Welcome '.white + @player_one.current_user.to_s.cyan + ' your symbol is'.white + ' X'.cyan
  puts 'Welcome '.white + @player_two.current_user.to_s.green + ' your symbol is'.white + 'O'.green
end
