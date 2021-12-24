class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify.subject
  #
  def notify
    @user = params[:user]
    mail to: @user.username, subject: "Account created"
  end
end
