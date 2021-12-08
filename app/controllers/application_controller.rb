class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permited_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || index_path
  end

  protected
  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
