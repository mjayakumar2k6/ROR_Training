class SessionController < ApplicationController
  skip_before_action :validate_user
  def signin
    @user = User.new(username: "")
  end

  def signup
  end

  def signout
    reset_session
  end

  def create_user
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      UserMailer.with(user: @user).notify.deliver_now
      #redirect_to action: signin, notice: "Signed up successfully. Please login"
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to session_signin_url, notice: "Account was successfully create." }
      end
    end    
  end

  def login
    @user = User.find_by_username(params[:user][:username])
    
    respond_to do |format|
      if @user and @user.check_password?(params[:user][:password])
        session[:user_id] = @user.id
        format.html { redirect_to departments_url, notice: "Signin Success." }
      else
        @user = User.new(username: params[:user][:username])
        format.html { render action: :signin, notice: "please enter valid user name and passwod." }
      end
    end      
  end

  def checkuser
    @user = User.where(username: params[:user][:username]).first
    respond_to do |format|
      format.js
    end
  end

  def upload
    file = params[:upload]
    File.open(Rails.root.join("public", "uploads", file.original_filename), "wb") do|f|
      f.write(file.read);
    end
    render action: :signin
  end
end
