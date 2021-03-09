class BorrowersController < ApplicationController

    def create
        @borrower = Borrower.create(name: params[:name])
        render json: @borrower
    end

end
