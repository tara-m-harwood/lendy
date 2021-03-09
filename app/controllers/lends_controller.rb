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
        @lend = Lend.create(item_id: params[:item_id],
                            borrower_id: params[:borrower_id],
                            start_date: params[:start_date],
                            end_date: params[:end_date],
                            complete: params[:complete]
                           )
        render json: @lend
    end

    def update
        @lend = Lend.find(params[:id])
        @lend.update(item_id: params[:item_id],
                    borrower_id: params[:borrower_id],
                    start_date: params[:start_date],
                    end_date: params[:end_date],
                    complete: params[:complete]
                )
        render json: @lend
    end

end
