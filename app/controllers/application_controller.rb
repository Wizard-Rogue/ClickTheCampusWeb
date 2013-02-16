class ApplicationController < ActionController::Base
  protect_from_forgery
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to event_path, :alert => exception.message
  # end
end
