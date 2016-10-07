class AnswersController < ApplicationController
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
    
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
