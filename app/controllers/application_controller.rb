class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  #simple_token_authentication usage
  acts_as_token_authentication_handler_for User

end
