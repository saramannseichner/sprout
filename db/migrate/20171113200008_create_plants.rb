class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.integer :water_level
      t.integer :sun_level
      t.integer :care_level
      t.text :special_care
      t.decimal :price, precision: 5, scale: 2
      t.text :description
      t.decimal :height, precision: 5, scale: 2
      t.string :common_name
      t.string :scientific_name
    end
  end
end
