class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  I18n.locale = :en

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sin_up,keys: [:first_name,:last_name,:email,:password,:password_confirmation])
  end

end
