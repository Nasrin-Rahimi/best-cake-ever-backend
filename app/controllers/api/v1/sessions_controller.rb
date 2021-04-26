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

    # get_current_customer route check if we're logged in, which checks the current_customer
    # and session in application_controller to find the customer
    # if it find customer return it otherwise return error
    def get_current_customer
        if logged_in?
            render json: current_customer
        else
            render json: {
                error: "No one logged in"
            }
        end
    end
    
end
