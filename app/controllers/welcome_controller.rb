class WelcomeController < ApplicationController

  def home
    #will automatically render views/welcome/home.html.erb
  end

  def answers
    #will automatically render views/welcome/answers.html.erb
    @questions = Question.all
  end

  def map
    #will automatically render views/welcome/map.html.erb
  end

end
