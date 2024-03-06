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

# Players
# Methods needed? 
# 	starting_lives = 3
# 	current_lives
# 		>full_lives = 3
# 		>half_life = 2
# 		>third_life = 1
# 		>dead = 0
# 	lives = puts “current_lives / starting_lives”

# 	>player_one
# 		>name 
# 		>lives
		
# 	>player_two
# 		>name 
# 		>lives