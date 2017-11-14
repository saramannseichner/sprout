class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user
  has_many :plants, through: :order_items

  before_create :set_order_status
  before_save :update_subtotal

  # def add_order_item(plant_id)
  #   order_item = order_items.find_or_create_by_plant_id(plant_id)
  #   order_item.quantity += 1
  #   order_item.save
  # end

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def tax
  end

  def shipping
  end

  def show_status
    case self[:status]
    when 3
      "Completed"
    when 1
      "Placed"
    when 2
      "Shipped"
    else
      "Pending"
    end
  end

  private

  def set_order_status
    self[:status] = 0
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

  # def find_or_create_by_plant_id(plant_id)
  #   if order
  # end
end
