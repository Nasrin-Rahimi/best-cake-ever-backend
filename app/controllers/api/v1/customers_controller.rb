class Api::V1::CustomersController < ApplicationController

    def show
        customer = Customer.find_by(id: params[:id])
        if(customer)
            # render json: {id: customer.id, name: customer.name, orders: customer.orders}
            options = {
                include: [:orders]
            }
            customer_json = CustomerSerializer.new(customer, options)
            render json: customer_json
        else
            render json: {message: 'Customer Not Found'}
        end
    end

end
