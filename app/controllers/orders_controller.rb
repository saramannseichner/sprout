class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @order_items = current_order.order_items
  end

  def new
    @address = Address.new
  end

  def create
    @order = Order.new(current_order)
    # assign user id
    # assign order status
  end

  # def payment
  # end

  private

  # def order_params
  #   params.require(:order).permit(:subtotal, :shipping, :tax, :total)
  # end
end
