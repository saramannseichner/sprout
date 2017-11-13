class RemoveFieldsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :street_address, :string
    remove_column :users, :city, :string
    remove_column :users, :country, :string
    remove_column :users, :postal_code, :string
    remove_column :users, :phone_number, :string
  end
end
