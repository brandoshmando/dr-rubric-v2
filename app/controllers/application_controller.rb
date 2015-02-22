class ApplicationController < ActionController::API
  #simple_token_authentication usage
  protect_from_forgery with: :null_session
  acts_as_token_authentication_handler_for User

  respond_to :json
end
