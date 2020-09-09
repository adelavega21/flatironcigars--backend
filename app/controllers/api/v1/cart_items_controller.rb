class Api::V1::CartItemsController < ApplicationController

    def index
        cart_items = CartItem.all
        render json: cart_items
    end

    def show
        cart_item = CartItem.find(params[:id])
        render json: cart_item
    end

    def create 
        cart_item = CartItem.create(
            item_id: params[:item_id],
            cart_id: params[:cart_id],
            quantity: params[:quantity])
        render json: cart_item
    end

    def update
        cart_item = CartItem.find(params[:id])
        cart_item.update(cart_item_params)
        render json: cart_item
    end

    def delete
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
    end

    def cart_item_params
        params.require(:wishlist).permit!
    end
end