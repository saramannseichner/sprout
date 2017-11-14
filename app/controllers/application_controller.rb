class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order

  def current_order
    if current_user.orders.any?
      current_user.orders.last
    else
      Order.create! user: current_user
    end
  end
end
