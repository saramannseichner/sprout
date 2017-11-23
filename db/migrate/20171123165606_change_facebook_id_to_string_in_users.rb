class ChangeFacebookIdToStringInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :facebook_id, :string
  end
end
