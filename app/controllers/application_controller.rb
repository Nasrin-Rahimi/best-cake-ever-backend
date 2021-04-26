class ApplicationController < ActionController::API

    def current_customer
        Customer.find_by(id: session[:customer_id])
    end

    def logged_in?
        !!current_customer
    end

end
