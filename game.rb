#This class will manage the overall game logic. It will have methods to start the game, manage the current turn, and end the game.
require './players.rb'
require './question.rb'
require './turns.rb'

class Game
  def initialize
    puts "Player 1, please enter your name: "
    player1 = gets.chomp
    puts "Player 2, please enter your name: "
    player2 = gets.chomp

    @players = [Player.new(player1), Player.new(player2)] # array of player objects? so how to access again?
    @turns = Turns.new(@players)
  end

  def lives
    @display_lives
  end

  def start_game
    puts "🎲 Let's get ready to rumble! 🎲"
    @turns.which_player
    @turns.start_turn
  end

  def current_turn  # this is a method that will be called by the Turns class
    @turns.current_turn
  end

  def end_turn
    @turns.end_turn
  end

  def check_lives?
    @players.any? { |player| player.lives == 0 }
  end

  def end_game
    puts "༼ つ ╹ ╹ ༽つ Game over! ༼ つ ╹ ╹ ༽つ"
  end
end
# end

game = Game.new
game.start_game
until game.check_lives?
  game.current_turn
end
game.end_game