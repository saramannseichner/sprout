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
    @order.status = "pending"
    @order.user = current_user
    @order.address = Address.find_by_user_id(current_user)
    @order.save!
  end

  # def create
  #   plant = Plant.find(params[:plant_id])
  #   order  = Order.create!(amount: plant.price, state: 'pending')

  #   redirect_to new_order_payment_path(order)
  # end

  # def payment
  # end

  private

  # def order_params
  #   params.require(:order).permit(:subtotal, :shipping, :tax, :total)
  # end
end
