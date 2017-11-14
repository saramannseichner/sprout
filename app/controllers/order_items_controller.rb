class OrderItemsController < ApplicationController
  def new
    # if current_user.orders
    #  @order_item = OrderItem.new
    #  @order_item.order_id =
    # else
    #   @order = Order.new
    #   @order
  end

  def create
    @order_item = OrderItem.new(order_item_params)
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :order_id)
  end
end
