class QuestionsController < ApplicationController
    before_action :set_question, only: [:edit, :update, :destroy]
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

    def answers
        @questions = Question.all 
    end

    def new
        @question = current_user.questions.build
    end

    def create
        @question = current_user.questions.build(question_params)
        if @question.save
            flash[:success] = "Question successfully added."
            redirect_to answers_path    
        else
            render "new"
        end
    end

    def edit
        #only the original author can edit a question
        if current_user != @question.user
            flash[:warning] = "Sorry. You cannot update that question."
            redirect_to answers_path
        end
    end

    def update
        if @question.update(question_params)
            flash[:success] = "Question successfully updated."
            redirect_to answers_path
        else
            render "edit"
        end
    end

    def destroy
        @question.destroy
        flash[:success] = "Question successfully deleted."
        redirect_to answers_path
    end

    private
        def set_question
            @question = Question.find(params[:id])
        end
        
        def question_params
            params.require(:question).permit(:content, :user_id)
        end
    
end
