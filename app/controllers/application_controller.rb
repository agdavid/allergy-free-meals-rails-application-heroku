class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Use for adding custom attributes to strong params
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # Use for authorization
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  protected 
    # Use for adding custom attributes to strong params
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :name, :provider, :uid) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name, { allergen_ids: [] }, :provider, :uid, :image, :motto, :admin) }
    end

    # Use for rescuing Pundit not authorized errors
    def user_not_authorized
      flash[:error] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
end
