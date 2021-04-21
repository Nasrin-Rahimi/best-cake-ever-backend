class Api::V1::OrdersController < ApplicationController

    before_action :set_order, only: [:update, :destroy]

    def index
        customer = Customer.find(params[:user_id])
        orders = customer.orders
        render json: orders
    end

    def create
        order = Order.new(order_params)
        if order.save
            render json: order
        else
            render json: { status: 'error', message: "Server Error!" }
        end
    end

    def update
        if @order.update(order_params)
            render json: @order
        else
            render json: { status: 'error', message: "Server Error! Please try again." }
        end
    end

    def destroy
        if @order.delete
            render json: {orderId: @order.id}
        else
            render json: { status: 'error', message: "Delete order Error! Please try again." }
        end
    end

    private 

    def order_params
        params.require(:order).permit(:total_price, :order_Date, :customer_id)
    end

    def set_order
        @order = Order.find(params[:id])
    end

end
