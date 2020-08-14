# what do you need from player?
require ‘colorize’
#classes
class Player
    def initialize(name,symbol)
        @name = name
        @symbol = symbol
    end
    def current_user
        @name
    end
end
board = ["1", "2", "3","4", "5", "6","7", "8", “9”]
def grid(board)
    puts “#{board[0]} | #{board[1]} | #{board[2]}”
    puts “---------”
    puts “#{board[3]} | #{board[4]} | #{board[5]}”
    puts “---------”
    puts “#{board[6]} | #{board[7]} | #{board[8]}”
end
#main

module TttMethods

  def position_full (board, index )
    !(board[index] == nil || board[index] == " " )
  end

  def input_player (input)
    player = input.to_i - 1 
  end
  

  def valid_move (board, input)
   if input.is_a?(Integer) && input.match(1..9) && input.match(board)
    true
   else
    false
  end
  
  
end
WIN = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
]




puts “Welcome to Tic Tac Toe game”.blue
puts “Please enter name for player X”.red
player_one = Player.new(gets.chomp, “X”)
puts “Please enter name for player O”.green
player_two = Player.new(gets.chomp, “O”)
puts “Welcome “.white + “#{player_one.current_user}“.red + ” your symbol is X”.white
puts “Welcome “.white + “#{player_two.current_user}“.green +  ” your symbol is O”.white
# Play time
puts “#{player_one.current_user}“.red + ” mark your X in a number”.white
puts grid(board)
pl_one_x = gets.chomp.to_i
if (1..9).any?(pl_one_x)
    board[pl_one_x - 1] = “X”
    puts grid(board)
else
    puts “Enter a number between 1 and 9"
end
puts “#{player_two.current_user}“.green + ” mark your O in a number”.white
puts grid(board)
pl_two_o = gets.chomp.to_i
if (1..9).any?(pl_one_x) && != “X”
    board[pl_two_o - 1] = “O”
    puts grid(board)
else
    puts “Enter a number between 1 and 9 and diferent from X”
end
=begin
# if move is valid return  change of player else return
puts “Invalid move”
# Player change
puts “Player O”.green + ” make your move”.white
puts grid(board)
# if move is valid return  change of player else return
puts “Invalid move”
=end