class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_mail.subject
  #
  def welcome_mail(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Bienvenido a Nuestro Sitio')
  end
end
