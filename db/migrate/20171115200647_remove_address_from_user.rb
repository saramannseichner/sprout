class RemoveAddressFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :address_id
  end
end
