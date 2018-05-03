require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  include ActionController::MimeResponds
  include Knock::Authenticable
	undef_method :current_user
end
