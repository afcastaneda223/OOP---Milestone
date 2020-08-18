#!/usr/bin/env ruby
# what do you need from player?
require 'colorize'
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

board = ["1", "2", "3","4", "5", "6","7", "8", "9"]

def grid(board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "---------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "---------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
end
#main
puts "Welcome to Tic Tac Toe game".blue

puts "Please enter name for player X".red
player_one = Player.new(gets.chomp, "X")

puts "Please enter name for player O".green
player_two = Player.new(gets.chomp, "O")

puts "Welcome ".white + "#{player_one.current_user}".red + " your symbol is X".white
puts "Welcome ".white + "#{player_two.current_user}".green +  " your symbol is O".white

# Play time

puts "#{player_one.current_user}".red + " mark your X in a number".white
puts grid(board)
pl_one_x = gets.chomp.to_s



if (1..9).any?(pl_one_x) #match board && !"X" || "O"
    board[pl_one_x - 1] = "X"
    puts grid(board)
else
    puts "Enter a number between 1 and 9"
end

puts "#{player_two.current_user}".green + " mark your O in a number".white
puts grid(board)
pl_two_o = gets.chomp.to_i

if (1..9).any?(pl_one_x) && != "X"
    board[pl_two_o - 1] = "O"
    puts grid(board)
else
    puts "Enter a number between 1 and 9 and diferent from X"
end


=begin

# if move is valid return  change of player else return 
puts "Invalid move"

# Player change
puts "Player O".green + " make your move".white
puts grid(board)

# if move is valid return  change of player else return 
puts "Invalid move"

1st move
other moves <=9
win? 
valid? 

input de jugardor = (1..9) &&  bard.match(input)


while !win? valid?
count 
    move

else win? 
    retunt winer
=end


#logica macro
=begin
2 jugadores (inicializar)
1 tablero que se actualiza con cada jugada si valid moove(ligica micro) es verdad y no winner (logica micro) y no sea mayor a 9
reiniciar tablero

logica micro
iniciar jugadores( nombre ) y asignamos X o O
mostrar tablero
pedimos jugada
valid moove si no input invalido y pide nuevamente
            si es valida actualizamos tablero 
            y cambia jugador se repite 9 veces o hasta que winer = true


            al final de la jugada revisar si win si no cambia jugador si si print winer

