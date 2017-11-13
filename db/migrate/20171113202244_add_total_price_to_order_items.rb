class AddTotalPriceToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :total_price, :decimal, precision: 6, scale: 2
  end
end
