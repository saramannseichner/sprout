class AddSizeToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :size, :integer
  end
end
