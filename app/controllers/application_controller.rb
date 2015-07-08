class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    %i(sign_up account_update new).each do |s|
      devise_parameter_sanitizer.for(s) {|u| u.permit(:name, :address1, :address2, :city, :state, :zip, :phone, :email, :password, :password_confirmation, :current_password)}
    end
  end
end