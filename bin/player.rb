require 'colorize'

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def current_user
    @name
  end
  puts '****************************'.blue
  puts 'Welcome to Tic Tac Toe game'.blue
  puts '****************************'.blue
  puts  " "
  puts 'Please enter name for player X'.cyan
  puts  " "
  @player_one = Player.new(gets.chomp, 'X')
  puts 'Please enter name for player O'.green
  puts  " "
  @player_two = Player.new(gets.chomp, 'O')
  puts  " "
  puts 'Welcome '.white + @player_one.current_user.to_s.cyan + ' your symbol is'.white + ' X'.cyan
  puts " "
  puts 'Welcome '.white + @player_two.current_user.to_s.green + ' your symbol is'.white + ' O'.green
end
