require "colorize"
require "artii" 


class Player 
  attr_accessor :name
    def initialize(name)
        @name = name            
    end 

    arter = Artii::Base.new
    puts arter.asciify("TIC TAC TOE")
    puts 'Please enter name for player X'.cyan
    puts ' '
    @player_one = Player.new(gets.chomp)
    puts ' '
    puts 'Please enter name for player O'.green
    puts ' '
    @player_two = Player.new(gets.chomp)
    puts ' '
    puts "PLAYERS INFO"
    puts ' '
    puts 'Welcome '.white + @player_one.name.cyan + ' you are'.white + ' Player X'.cyan
    puts ' '
    puts 'Welcome '.white + @player_two.name.green+ ' you are'.white + ' Player O'.green
    puts ' ' 
    puts "PLAY TIME" 
  
end