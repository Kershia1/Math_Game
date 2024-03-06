# This class will manage the turns in the game. It will have methods to start a turn, run a question, manage the current player, and adjust the player's lives based on their answer.

class Turns
  def initialize (turns)
    @turns = turns
    @current_turn = 0
  end

  def which_player
    puts "-----New Turn-----"
    current_player = @turns[@current_turn % 2] # Check if the player is even or odd
    @current_turn += 1 # Increment the turn
    puts "It's #{current_player.name}'s turn!" # Announce the player's turn
    current_player
  end

  def start_turn
    current_player = which_player # Get the current player
    run_question(current_player) # Run the question
  end

  def run_question(current_player)
    question = Question.new # create a new question as an instance
    puts question.generate_question # ask the question
    input_answer(current_player, correct_answer) # get the answer from the user
  end

  def input_answer(current_player, correct_answer) 
    answer = gets.chomp.to_i # get the answer from the user
    if current_player.check_answer(answer, correct_answer) # check the answer
      puts "You got it right!"
    else 
      puts "Wrong answer!"
      lose_life
    end
  end

  def end_turn
    if @turns[0].lives == 0 # Check if player 1 has no lives
      puts "Player 2 wins with a score of #{@turns[1].lives}/3"
    elsif @turns[1].lives == 0 # Check if player 2 has no lives
      puts "Player 1 wins with a score of #{@turns[0].lives}/3"
    else
      start_turn # Start the next turn
    end
  end
end