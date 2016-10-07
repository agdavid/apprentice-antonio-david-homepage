class AnswersController < ApplicationController
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

    def new
        @question = Question.find(params[:question_id].to_i)
        @answer = current_user.answers.build
    end

    def create
    end

    def update
    end

    def destroy
    end

end
