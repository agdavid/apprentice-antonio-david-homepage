class AnswersController < ApplicationController
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

    def new
        @question = Question.find(params[:question_id].to_i)
        @answer = current_user.answers.build
    end

    def create
        @answer = current_user.answers.build(answer_params)
        if @answer.save
            flash[:success] = "Answer successfully created."
            redirect_to answers_path
        else
            render "new"
        end
    end

    def update
    end

    def destroy
    end

    private
        def answer_params
            params.require(:answer).permit(:content, :question_id, :user_id)
        end

end
