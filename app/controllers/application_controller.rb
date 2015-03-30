class ApplicationController < ActionController::API
  include CustomError

  before_filter :current_user, :token_authenticate_request

  private
  def current_user
    @current_user ||= User.joins(:token).find_by('tokens.value = ?', http_auth_header_content)
  end

  def http_auth_header_content
    token_value = request.headers["Token"]

    if token_value
      @token = Token.find_by(value: token_value)
      return @token.value
    else
      @token = nil
    end
  end

  def token_authenticate_request
    if !@token
      fail UnauthorizedUserError
    elsif !@current_user
      fail UserDoesNotExistError
    elsif @token.token_expired?
      fail TokenExpiredError
    end
  end
end
