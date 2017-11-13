class RemoveDateFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :date
  end
end
