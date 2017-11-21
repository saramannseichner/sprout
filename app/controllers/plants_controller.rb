class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_plant, only: [:show]

  def index
    if params[:sun_level] && params[:care_level]
      @plants = Plant.filter(params[:sun_level].to_i, params[:care_level].to_i)
    else
      @plants = Plant.all
    end
    @rows = (@plants.count/2).round
  end

  def show
    @plants = Plant.all
    @pos = params[:pos]
    @order_item = current_order.order_items.new
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
