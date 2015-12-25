class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  def admin_required
  	if !current_user.admin?
  		redirect_to "/"
  	end
  end

  protected

   def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) << :account
      devise_parameter_sanitizer.for(:sign_up) << :account
      devise_parameter_sanitizer.for(:account_update) << :account
    end
end
