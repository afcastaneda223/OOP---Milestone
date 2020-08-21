local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)

require "main.rb"
require "board.rb"
require "controller.rb"
require "colorize"
require "artii"


class Game < Controller
 
    def play
     while @counter < 10 
         if @counter == 9 && !win(board)
           puts ' TIE, Start again'
           @counter = 10
         elsif !win(board)
           puts update_board
         elsif win(board)
           if @counter.odd?
             puts "Player X".cyan + ' is the Winner!!'.white
             @counter = 10
           elsif @counter.even?
                puts "Player O".green + ' is the Winner!!'.white
                @counter = 10
           end
         end
       end
     end
 end
 juego = Game.new
 juego.play