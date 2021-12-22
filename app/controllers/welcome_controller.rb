class WelcomeController < ApplicationController

  layout Proc.new{|controller| controller.request.xhr? ? "application" : "admin"}
  
  def index
  end

  def home
    render :index, layout: false
    #redirect_to action: :redirect_to_me
  end

  def redirect_to_me

  end
end
