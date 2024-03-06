#This class will manage the overall game logic. It will have methods to start the game, manage the current turn, and end the game.

class Game
  def initialize(players)
    @players = players # array of player objects? so how to access again?
    @turns = Turns.new(@players)
  end

  def start_game
    puts "🎲 Let's get ready to rumble! 🎲"
    @turns.start_turn
    # any additional logic here?
  end

  def current_turn  # this is a method that will be called by the Turns class
    @turns.current_turn
    # any additional logic here?
  end

  def end_game
    # end the game logic
    puts "🎲 Game over! 🎲"
  end
end