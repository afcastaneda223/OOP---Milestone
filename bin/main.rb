#!/usr/bin/env ruby
# what do you need from player?
require 'colorize'
puts 'Welcome to Tic Tac Toe game'.blue
puts 'Please enter name for player X'.red
player_one = gets.chomp
puts 'Please enter name for player O'.green
player_two = gets.chomp
board = %w[1 2 3 4 5 6 7 8 9]
def grid(board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end
# Play time
puts player_one.to_s.red + ' make your move'.white
puts grid(board)
# if move is valid return marked board and change player else return invalid move
puts 'Invalid move'
# check if win or tie with a loop
while !win || !tie
end
# Player change
puts player_two.to_s.green + ' make your move'.white
# Marked board
puts grid(board)
# if move is valid return marked board and change player else return invalid move
puts 'Invalid move'
# check if win or tie with a loop
while !win || !tie
end
# Repeat until win or tie
puts 'winner is'.white 'player X'.red || 'Player O'.green || 'Tie game'.white
# End of the game and start again
