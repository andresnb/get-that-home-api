class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :require_login!
 
  def require_login!
    authenticate_token || render_unauthorized('Access denied')
  end
end
