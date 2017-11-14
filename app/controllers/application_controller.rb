class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order
  before_action :configure_permitted_parameters, if: :devise_controller?


  def current_order
    if current_user.orders.any?
      current_user.orders.last
    else
      Order.create! user: current_user
    end
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
