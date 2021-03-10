class ItemsController < ApplicationController
    
    def index
        @items = Item.all
        render json: @items
    end
    
    def show
        @items = Item.find(params[:id])
        render json: @items
    end
    
    def create
        @item = Item.create(user_id: params[:user_id],
                            name: params[:name],
                            category: params[:category]
                           )
        render json: @item
    end

    def destroy
        @item = Item.find_by(id: params[:id])
        @item.destroy
        render json: @item
    end

end
