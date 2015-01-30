class V1::ApplicationController < ActionController::API
  before_filter :authenticate_user!

  respond_to :json
end
