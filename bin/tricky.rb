require "colorize"
require "artii" 

class Player
    attr_accessor :name
    def initialize(name)
        @name = name            
    end
   

    arter = Artii::Base.new
    puts arter.asciify("TIC TAC TOE")
    puts ' '
    puts 'Please enter name for player X'.cyan
    puts ' '
    @player_one = Player.new(gets.chomp)
    puts 'Please enter name for player O'.green
    puts ' '
    @player_two = Player.new(gets.chomp)
    puts ' '
    puts "PLAYERS INFO"
    puts ' '
    puts 'Welcome '.white + @player_one.name.cyan + ' your symbol is'.white + ' X'.cyan
    puts ' '
    puts 'Welcome '.white + @player_two.name.green+ ' your symbol is'.white + ' O'.green
    puts ' ' 
    puts "PLAY TIME" 
end

class Board
    attr_accessor :board, :counter
    def initialize
        @board = %w[1 2 3 4 5 6 7 8 9]
        @counter = 0
    end

    def grid      
      puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
      puts '---------'
      puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
      puts '---------'
      puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    end
     
   
end

class Controller < Board
    
 
  private
      def validate(player_move)
        @board.detect { |x| x == player_move.to_s }
      end
      
      def try_again
        puts 'Enter a valid move'
        valid_move
      end
      
      def valid_move
        validate(gets.chomp) || try_again
      end
      
      def update_board
        
        if @counter.even?
          puts " "
          puts  'Mark your'.white + ' X'.cyan + ' in a number from 1 to 9'.white
          @board[valid_move.to_i - 1] = 'X'.cyan
          @counter += 1
          puts grid
        else @counter.odd?
          puts 'Mark your'.white + ' O'.green + ' in a number'.white
             @board[valid_move.to_i - 1] = 'O'.green
             @counter += 1
             puts grid
        end
      end
      WIN_COMBINATIONS = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [2, 4, 6],
        [0, 4, 8]
      ].freeze
      
      
      def win(x)
        result = false
        WIN_COMBINATIONS.each do |w|          
            if x[w[0]] == 'X'.cyan && x[w[1]] == 'X'.cyan && x[w[2]] == 'X'.cyan
              result = true
            elsif x[w[0]] == 'O'.green && x[w[1]] == 'O'.green && x[w[2]] == 'O'.green
             result = true
            end
        end
        return result
      end
      
end

class Game < Controller
 
  
   def play
    while @counter < 10 
        if @counter == 9
          puts ' TIE, Start again'
          @counter = 10
        elsif !win(@board)
          puts update_board
        elsif win(@board)
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



