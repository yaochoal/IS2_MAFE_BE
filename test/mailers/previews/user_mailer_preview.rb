# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_mail
  def welcome_mail
    UserMailer.welcome_mail(User.first)
  end

  def contact_mail
    UserMailer.contact_mail(Contact.first)
  end


end
