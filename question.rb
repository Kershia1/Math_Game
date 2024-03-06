# This class will manage the questions in the game. It will have methods to create a question, return the sum, and check the answer.


class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def generate_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def return_sum
    @num1 + @num2
  end

  def check_answer(answer)
    answer == return_sum
  end
end

question = Question.new # create a new question as an instance 
puts question.generate_question # ask the question

answer = gets.chomp.to_i # get the answer from the user