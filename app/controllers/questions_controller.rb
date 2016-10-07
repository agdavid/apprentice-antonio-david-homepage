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
        @question = current_user.questions.build(question_params)
        if @question.save
            flash[:success] = "Question successfully added."
            redirect_to answers_path    
        else
            render "new"
        end
    end

    def show
    end

    def update
    end

    def destroy
    end

    private
        def question_params
            params.require(:question).permit(:content, :user_id)
        end
    
end
