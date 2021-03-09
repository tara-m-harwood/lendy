class ItemsController < ApplicationController

    def create
        @item = Item.create(user_id: params[:user_id],
                            name: params[:name],
                            category: params[:category]
                           )
        render json: @item
    end

end
