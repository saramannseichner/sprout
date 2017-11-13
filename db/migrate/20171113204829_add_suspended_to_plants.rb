class AddSuspendedToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :suspended, :integer
  end
end
