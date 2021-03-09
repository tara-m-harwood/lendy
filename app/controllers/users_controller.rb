class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user.to_json(:include => [:items, :lends => {:include => :borrower} ])
    end
    
    def create
        @user = User.create(username: params[:username])
        render json: @user
    end

end
