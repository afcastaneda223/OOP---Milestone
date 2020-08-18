@board = %w[1 2 3 4 5 6 7 8 9]

def initialize(name,symbol)
    @name = name
    @symbol = symbol
end

def validate (player_move)
    @board.detect{|x| x == player_move.to_s}
end

def try_again
    puts "Enter a valid move"
    valid_move
end

def valid_move 
  puts 'Pick a number for your move'
  validate(gets.chomp) || try_again
end

def game 

  # def current_player
  #   case  @tie_counter 
  #   when 0
  #     player_one
  #   when 1
  #     player_two
  #   when 2
  #     player_one
  #   when 3
  #     player_two
  #   when 4
  #     player_one
  #   when 5
  #     player_two
  #   when 6
  #     player_one
  #   when 7
  #     player_two
  #   when 8
  #     player_one
              
  # end

  @tie_counter = 0  
def play    
      while  @tie_counter < 9 
        puts @board
      if !win && valid_move.is_a? (Numeric)
        if @tie_counter == 8 
        return puts "Tie game"
        elsif @tie_counter.even?
             board[valid_move - 1] = "X".red
             tie_counter += 1
        elsif @tie_counter.odd?              
             board[valid_move - 1] = "O".green
             tie_counter += 1
        end
      else  win 
          return winners
        
        end
            end
          end
end
puts valid_move



