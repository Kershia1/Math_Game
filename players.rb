# This class will represent a player in the game. It will have properties like name and lives, and methods to manage the player's lives.
class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def display_lives
    puts "#{@name}: #{@lives}/3"
  end

  def lose_life
    @lives -= 1
  end
end

# puts "Player 1, please enter your name: "
# player1 = Player.new(gets.chomp)
# puts "Player 2, please enter your name: "
# player2 = Player.new(gets.chomp)

# puts "Player 1: #{player1.name} and Player 2: #{player2.name} have been created."

# puts "Player 1 #{player1.display_lives} and Player 2 #{player2.display_lives} you both have 3 lives. The 1st player to loose all thier lives will loose the game."