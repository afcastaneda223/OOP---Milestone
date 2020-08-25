#!/usr/bin/env ruby
require 'colorize'
require 'artii'
require_relative '../bin/controller.rb'
require_relative '../bin/player.rb'
require_relative '../bin/interface.rb'
require_relative '../bin/2board.rb'
require_relative '../bin/2player.rb'

class Game
  def initialize; end

  @turn = 0
  @board = Board.new
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

  while @turn < 10
    if @turn == 9
      puts ' Tie Game Start Again'
      @turn = 10
    elsif !@board.winner
      if @turn.odd?
        puts @board.update_board_x
        @board.print_board
        @turn += 1
      elsif @turn.even?
        puts @board.update_board_o
        @board.print_board
        @turn += 1
      end

    elsif @board.winner
      if @turn.odd?
        puts @player_one.current_user.to_s.cyan + ' is the Winner!!'.white
        @turn = 10
      elsif @counter.even?
        puts @player_two.current_user.to_s.green + ' is the Winner!!'.white
        @turn = 10
      end
    end
  end
end
