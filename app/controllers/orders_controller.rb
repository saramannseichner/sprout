class OrdersController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def new
    @order = current_order
  end

  def create
    @order = Order.new(order_params)
    # assign user id
    # assign order status
  end

  private

  def order_params
    params.require(:order).permit(:subtotal, :shipping, :tax, :total)
  end
end
