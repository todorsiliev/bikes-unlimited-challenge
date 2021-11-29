class ApplicationController < ActionController::Base
  respond_to :json
  before_action :authenticate_user!
end
