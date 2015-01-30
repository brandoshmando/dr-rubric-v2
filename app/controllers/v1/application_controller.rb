class V1::ApplicationController < ActionController::API
  protect_from_forgery with: :null_session
  acts_as_token_authentication_handler_for User

  respond_to :json
end
