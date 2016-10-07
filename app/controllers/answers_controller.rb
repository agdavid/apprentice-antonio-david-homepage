class AnswersController < ApplicationController
    before_action :set_answer, only: [:destroy]
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

    def edit
        @question = Question.find(params[:question_id].to_i)
        @answer = Answer.find(params[:id].to_i)
        #only the original author can edit the answer
        if current_user != @answer.user 
            flash[:warning] = "Sorry. You cannot edit that answer."
            redirect_to answers_path
        else
            render "edit"
        end
    end

    def update
        @question = Question.find(params[:answer][:question_id].to_i)
        @answer = Answer.find(params[:id].to_i)
        if @answer.update(answer_params)
            flash[:success] = "Answer successfully updated."
            redirect_to answers_path
        else
            render "edit"
        end
    end

    def destroy
        @answer.destroy
        flash[:success] = "Answer successfully deleted."
        redirect_to answers_path
    end

    private
        def set_answer
            @answer = Answer.find(params[:id])
        end
        
        def answer_params
            params.require(:answer).permit(:content, :question_id, :user_id)
        end

end
