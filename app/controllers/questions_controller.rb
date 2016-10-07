class QuestionsController < ApplicationController
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

    def answers
        #will automatically render views/questions/answers.html.erb
        @questions = Question.all 
    end

    def index
    end

    def new
        @question = current_user.questions.build
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
