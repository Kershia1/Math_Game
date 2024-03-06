# require all other files here

require './game.rb'
require './players.rb'
require './question.rb'
require './turns.rb'


puts "Welcome to the Math Game!"
puts "Player 1, please enter your name: "
player1 = gets.chomp
puts "Player 2, please enter your name: "
player2 = gets.chomp

puts "🎲 Let's get ready to rumble! 🎲"
game = Game.new(player1, player2)
game.start_game

