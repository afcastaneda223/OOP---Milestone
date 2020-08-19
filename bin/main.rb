#!/usr/bin/env ruby
require 'colorize'
require_relative '../bin/controller.rb'
require_relative '../bin/player.rb'
require_relative '../bin/interface.rb'


class Game
    
    puts '****************************'.blue
    puts 'Welcome to Tic Tac Toe game'.blue
    puts '****************************'.blue
    puts  " "
    puts 'Please enter name for player X'.cyan
    puts  " "
    @player_one = Player.new(gets.chomp)
    puts 'Please enter name for player O'.green
    puts  " "
    @player_two = Player.new(gets.chomp)
    puts  " "
    puts 'Welcome '.white + @player_one.current_user.cyan + ' your symbol is'.white + ' X'.cyan
    puts " "
    puts 'Welcome '.white + @player_two.current_user.green + ' your symbol is'.white + ' O'.green

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

=end