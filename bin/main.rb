#!/usr/bin/env ruby
require 'colorize'
require_relative '../bin/controller.rb'
require_relative '../bin/player.rb'
require_relative '../bin/interface.rb'


class Game
    
    def initialize
        @player = Player.new
        @interface = Interface.new
        @controller = Controller.new
    end

  
 

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