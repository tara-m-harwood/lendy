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
        @borrower = Borrower.create(borrower_params)
        render json: @borrower
    end
    
    def update
        @borrower = Borrower.find(params[:id])
        @borrower.update(borrower_params)
        render json: @borrower
    end

    def destroy
        @borrower = Borrower.find_by(id: params[:id])
        @borrower.destroy
        render json: @borrower
    end

    private

    def borrower_params
        params.permit(:name, :email)
    end 

end
