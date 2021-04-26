class ApplicationController < ActionController::API

    include ::ActionController::Cookies

    def current_customer
        Customer.find_by(id: session[:customer_id])
    end

    def logged_in?
        !!current_customer
    end

end
