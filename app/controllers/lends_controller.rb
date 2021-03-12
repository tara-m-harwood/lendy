class LendsController < ApplicationController

    def index
        @lends = Lend.all
        render json: @lends
    end
    
    def show
        @lends = Lend.find(params[:id])
        render json: @lends
    end
    
    def create
        @lend = Lend.create(lend_params)
        render json: @lend
    end

    def update
        @lend = Lend.find(params[:id])
        @lend.update(lend_params)
        render json: @lend
    end

    def destroy
        @lend = Lend.find_by(id: params[:id])
        @lend.destroy
        render json: @lend
    end

    private
    
    def lend_params
        params.permit(:item_id, :borrower_id, :start_date, :end_date, :complete)
    end    

end
