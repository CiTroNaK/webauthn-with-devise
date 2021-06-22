class ApplicationController < ActionController::Base
  # Devise: authentication
  before_action :authenticate_user!
end
