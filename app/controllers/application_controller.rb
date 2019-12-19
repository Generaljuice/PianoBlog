class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramaters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_paramaters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name,:avatar])
    devise_parameter_sanitizer.permit(:account_update,keys:[:name,:avatar])
    devise_parameter_sanitizer.permit(:sign_up,keys:[:username])
  end

end
