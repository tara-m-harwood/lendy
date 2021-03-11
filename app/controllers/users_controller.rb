class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def create
        @user = User.create(user_params)
        login_page = "https://eager-poitras-0eb550.netlify.app/dashboard.html?username=#{@user.username}"
        redirect_to login_page
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
        render json: @user
    end

    def login
        @user = User.find_by(username: params[:username])
        render json: @user.to_json( :include => 
            [:items, :lends => { :include => [:item, :borrower]} ]
            )
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end  

end
 