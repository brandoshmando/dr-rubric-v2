module CustomError
  class UnauthorizedUserError < StandardError
  end

  class UserDoesNotExistError < StandardError
  end

  class TokenExpiredError < StandardError
  end

  rescue_from UnauthorizedUserError do
    render json: { error: 'Unauthorized User' }, status: :unauthorized
  end

  rescue_from UserDoesNotExistError do
    render json: { error: 'User with provided token does not exist' }, status: :bad_request
  end

  rescue_from TokenExpiredError do
    render json: { error: 'Provided token has expired. Please login again'}, status: 419
  end
end
