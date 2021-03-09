class BorrowersController < ApplicationController

    def index
        @borrowers = Borrower.all
        render json: @borrowers 
    end
    
    def show
        @borrower = Borrower.find(params[:id])
        render json: @borrower
    end
    
    def create
        @borrower = Borrower.create(name: params[:name])
        render json: @borrower
    end

end
