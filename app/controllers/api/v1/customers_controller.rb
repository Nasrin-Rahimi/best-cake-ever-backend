class Api::V1::CustomersController < ApplicationController

    def show
        customer = Customer.find_by(id: params[:id])
        if(customer)
            render json: {id: customer.id, name: customer.name, orders: customer.orders}
        else
            render json: {message: 'Customer Not Found'}
        end
    end

end
