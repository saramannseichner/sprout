class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :plants, through: :order_items
  has_one :address, through: :user

  before_create :set_order_status
  before_save :update_subtotal
  validates :address, presence: true


  def num_of_items
    order_items.collect { |oi| oi.valid? ? oi.quantity : 0 }.sum
  end

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def shipping
    15 # 15$ shipping for all orders
  end

  def tax
    subtotal * 0.15
  end

  def total
    order_items.collect { |oi| oi.valid? ? oi.total_price : 0 }.sum
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
end
