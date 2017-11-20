class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @order_items = current_order.order_items
    @order = Order.where(state: 'paid').find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    @order = Order.new(current_order)
    @order.status = "pending"
    @order.user = current_user
    @order.address = Address.find_by_user_id(current_user)
    @order.save!

    redirect_to new_order_payment_path(order)
  end

  private

  # def order_params
  #   params.require(:order).permit(:subtotal, :shipping, :tax, :total)
  # end
end
