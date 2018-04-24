require "application_responder"

<<<<<<< HEAD
class ApplicationController < ActionController::API
=======
class ApplicationController < ActionController::Base
>>>>>>> SPRINT_REVISION_3
  self.responder = ApplicationResponder
  respond_to :html
  include ActionController::MimeResponds
  include Knock::Authenticable
	undef_method :current_user
end
