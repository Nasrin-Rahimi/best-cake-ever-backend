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

    def create
        customer = Customer.new(customer_params)
        if customer.save
            session[:customer_id] = customer.id
            customer_json = CustomerSerializer.new(customer)
            render json: customer_json
        else
            resp = {
                error: customer.errors.full_messages.to_sentence
            }
            render json: resp
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :password)
    end

end
