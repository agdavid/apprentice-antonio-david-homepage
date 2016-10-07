class QuestionsController < ApplicationController

    def answers
        #will automatically render views/questions/answers.html.erb
        @questions = Question.all 
    end

    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def update
    end

    def destroy
    end
    
end
