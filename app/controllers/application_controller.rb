class ApplicationController < ActionController::Base
    # helper_method :test

    # def test
    #     Department.first
    # end
    before_action :validate_user
    def validate_user
        redirect_to controller: :session, action: :signin unless session[:user_id]
    end

    helper_method :current_user

    def current_user
        User.find(session[:user_id]) if session[:user_id]
    end
end
