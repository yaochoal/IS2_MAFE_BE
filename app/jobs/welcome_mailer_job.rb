class WelcomeMailerJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.welcome_mail(user)
  end
end
