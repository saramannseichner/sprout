class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :status
      t.references :user, foreign_key: true
      t.string :date
      t.decimal :subtotal, precision: 6, scale: 2
      t.decimal :tax, precision: 6, scale: 2
      t.decimal :shipping, precision: 6, scale: 2
      t.decimal :total, precision: 6, scale: 2
    end
  end
end
