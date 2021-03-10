class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user.to_json(:include => [:items, :lends => {:include => :borrower} ])
    end
    
    def create
        @user = User.create(username: params[:username])
        render json: @user
    end

    def login
        @user = User.find_by(username: params[:username])
        render json: @user.to_json( :include => 
            [:items, :lends => {
                :include => [:item, :borrower] 
             } ]
            )
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
        redirect_to 'https://lendy-tracker.herokuapp.com/destroy.html'
    end

end
 