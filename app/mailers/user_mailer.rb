class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "konishiwa #{@user.first_name} chan."

    mail(to: @user.email, subject: 'Welcome to Mugatu')
  end
end
