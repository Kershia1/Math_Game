# require all other files here

require './game.rb'
require './players.rb'
require './question.rb'
require './turns.rb'


puts "Welcome to the Math Game!"
game = Game.new
game.start_game

# Links to additional research 

# using inspect 
# https://www.rubyguides.com/2018/12/ruby-inspect-method/

# using raise
# https://www.geeksforgeeks.org/raising-exceptions-in-ruby/

# using catch and throw
# https://www.geeksforgeeks.org/catch-and-throw-exception-in-ruby/?ref=previous_article