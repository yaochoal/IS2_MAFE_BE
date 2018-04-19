class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_mail.subject
  #
  def welcome_mail(user)
    @user = user
    @url = 'http://localhost:3001'
    mail(to: @user.email, subject: 'Bienvenido a MAFE')
  end

  def contact_mail(contact)
    @contact = contact
    @url = 'http://localhost:3001'
    mail(to: @contact.email, subject: 'Confirmacion envio de mensaje')
  end
end
