require 'colorize'
require 'artii'

class Board
  attr_accessor :board, :counter
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @counter = 0
  end

  def grid
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts '---------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts '---------'
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end
end
