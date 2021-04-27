class Api::V1::SessionsController < ApplicationController

    def create
       customer = Customer.find_by(name: params[:session][:name])

        if customer && customer.authenticate(params[:session][:password])
            session[:customer_id] = customer.id
            options = {
                include: [:orders]
            }
            render json: CustomerSerializer.new(customer,options)
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
            # we are using fast json API, We have serializer to specific which attribute
            # we want to return, We should pass our customer to serializer to select specific attributes
            #render json: current_customer
            options = {
                include: [:orders]
            }
            render json: CustomerSerializer.new(current_customer, options)
        else
            render json: {
                error: "No one logged in"
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: "Successfully logged out"
        }
    end
    
end
