class Api::V1::SessionsController < ApplicationController

    def create
       customer = Customer.find_by(name: params[:session][:name])

        if customer && customer.authenticate(params[:session][:password])
            session[:customer_id] = customer.id
            render json: customer
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end
    
end
