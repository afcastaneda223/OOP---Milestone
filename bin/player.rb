class Player
    def initialize(name,symbol)
        @name = name
        @symbol = symbol
    end
    def current_user
        @name
    end
    puts "Welcome to Tic Tac Toe game".blue

    puts "Please enter name for player X".red
    @player_one = Player.new(gets.chomp, "X")

    puts "Please enter name for player O".green
    @player_two = Player.new(gets.chomp, "O")

    puts "Welcome ".white + "#{@player_one.current_user}".red + " your symbol is X".white
    puts "Welcome ".white + "#{@player_two.current_user}".green +  " your symbol is O".white
end

