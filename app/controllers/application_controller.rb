class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_contoroller?
  protect_form_forgery with: :exception
  
  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:self_introduction,:sex,:img_name])
  end
end
