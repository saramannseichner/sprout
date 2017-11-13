class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :plant, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :quantity
    end
  end
end
