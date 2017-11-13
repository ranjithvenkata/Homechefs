class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :update_sanitized_params, if: :devise_controller?
  before_filter :set_timezone

  def update_sanitized_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :email, :password,:name,:address])
  end

  def set_timezone
    Time.zone = 'Kolkata'
  end

end
