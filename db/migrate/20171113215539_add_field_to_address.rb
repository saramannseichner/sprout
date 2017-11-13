class AddFieldToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :first_name, :string
    add_column :addresses, :last_name, :string
    add_column :addresses, :street_address, :string
    add_column :addresses, :city, :string
    add_column :addresses, :country, :string
    add_column :addresses, :postal_code, :string
    add_column :addresses, :phone_number, :string
  end
end
