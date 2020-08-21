#!/usr/bin/env ruby
require 'colorize'
require 'artii'
require_relative '../bin/controller.rb'
require_relative '../bin/player.rb'
require_relative '../bin/interface.rb'
@interface = Interface.new

# imprimir marcador

def game
  counter = 0
  while counter < 9
    if counter == 9
      puts ' Tie Game'
      puts score
    # puts 'play again? Y/N'
    # Player.play_again
    elsif @player.win($board)
      if counter.even?
        puts @player_one.current_user.to_s.cyan + ' mark your'.white + ' X'.cyan + ' in a number'.white
        @interface.update_board_X
        counter += 1
        @interface.print_board
      elsif counter.odd?
        puts @player_two.current_user.to_s.green + ' mark your'.white + ' O'.green + ' in a number'.white
        @interface.update_board_O
        counter += 1
        @interface.print_board
        end
    elsif @player.win($board)
      if counter.odd?
        puts @player_one.current_user.to_s.cyan + ' is the Winner!!'.white
        # puts 'play again? Y/N'
        # Player.play_again
        counter = 10
      elsif counter.even?
        puts @player_two.current_user.to_s.green + ' is the Winner!!'.white
        counter = 10
        end
    end
  end
end

puts '****************************'.blue
puts 'Welcome to Tic Tac Toe game'.blue
puts '****************************'.blue
puts ' '
puts 'Please enter name for player X'.cyan
puts ' '
@player_one = Player.new(gets.chomp)
puts 'Please enter name for player O'.green
puts ' '
@player_two = Player.new(gets.chomp)
puts ' '
puts 'Welcome '.white + @player_one.current_user.cyan + ' your symbol is'.white + ' X'.cyan
puts ' '
puts 'Welcome '.white + @player_two.current_user.green + ' your symbol is'.white + ' O'.green

puts @interface.print_board

@counter = 0

while @counter < 9
  if @counter == 9
    puts ' Tie Game'
    puts score
  # puts 'play again? Y/N'
  # Player.play_again
  elsif @interface.win
    if @counter.even?
      puts @player_one.current_user.to_s.cyan + ' mark your'.white + ' X'.cyan + ' in a number'.white
      @interface.update_board_X
      @counter += 1
      @interface.print_board
    elsif @counter.odd?
      puts @player_two.current_user.to_s.green + ' mark your'.white + ' O'.green + ' in a number'.white
      @interface.update_board_O
      @counter += 1
      @interface.print_board
    end
  elsif @interface.win($board)
    if @counter.odd?
      puts @player_one.current_user.to_s.cyan + ' is the Winner!!'.white
      # puts 'play again? Y/N'
      # Player.play_again
      @counter = 10
    elsif counter.even?
      puts @player_two.current_user.to_s.green + ' is the Winner!!'.white
      @counter = 10
    end
  end
end
