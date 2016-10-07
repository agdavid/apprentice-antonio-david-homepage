class QuestionsController < ApplicationController

  def answers
      #will automatically render views/questions/answers.html.erb
      @questions = Question.all 
  end

end
