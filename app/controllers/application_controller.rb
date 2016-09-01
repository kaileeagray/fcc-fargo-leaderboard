class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :verify_authorized, except: :index


   protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) do |user_params|
       user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
     end
   end
end
