class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.plant = Plant.find(params[:plant_id])
    @order_item.order = current_order
    @order_item.save!
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end


  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to order_path(current_order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end
end
