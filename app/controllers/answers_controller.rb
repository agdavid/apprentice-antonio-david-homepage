class AnswersController < ApplicationController
    #For Devise authentication
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

    def new
    end

    def create
    end

    def update
    end

    def destroy
    end

end
