class RemoveFieldsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :street_address
    remove_column :users, :city
    remove_column :users, :country
    remove_column :users, :postal_code
    remove_column :users, :phone_number
  end
end
