
# what do you need from player?
require 'colorize'

puts "Welcome to Tic Tac Toe game".blue

puts "Please enter name for player X".red
player_one = gets.chomp

puts "Please enter name for player O".green
player_one = gets.chomp

class Player
    def initialize(n)
    
end

board = ["1", "2", "3","4", "5", "6","7", "8", "9"]
def grid(board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "---------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "---------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
end

# Play time

puts "Player X".red + " make your move".white
puts grid(board)

puts "#{player_one.current_user}".red +  " mark your X in a number".white

pl_one_x = gets.chomp 