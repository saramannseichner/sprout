class AddPriceToPlants < ActiveRecord::Migration[5.1]
  def change
    add_monetize :plants, :price, currency: { present: false }
  end
end
