class MailerJobJob < ApplicationJob
  queue_as :default

  def perform(contact)
    UserMailer.contact_mail(contact)
  end
end
