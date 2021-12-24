class WelcomeMailer < ApplicationMailer
    def new_user_email
        @user = params[:user]
        @password = params[:password]
        attachments["google.png"] = File.read(Rails.root.join("public", "google.png"))
        mail(to: @user.username, subject: "Account created!")
    end
end
