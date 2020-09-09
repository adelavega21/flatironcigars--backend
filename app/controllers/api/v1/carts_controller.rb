class Api::V1::CartsController < ApplicationController

    def index
        carts = Cart.all
        render json: carts
    end

    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    def create 
        cart = Cart.create(user_id: params[:user_id])
        render json: cart
    end

    def update
        cart = Cart.find(params[:id])
        cart.update(cart_params)
        render json: cart
    end

    def delete
        cart = Cart.find(params[:id])
        cart.destroy
    end

    def cart_params
        params.require(:wishlist).permit!
    end
end