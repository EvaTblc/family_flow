class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action do
    I18n.locale = :fr
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :phone_number, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :phone_number, :avatar])
  end

  def after_sign_in_path_for(user)
    stored_location_for(user) || organization_path(user.organization)
  end
end
