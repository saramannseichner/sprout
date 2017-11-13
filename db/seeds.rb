# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Plant.delete_all

attributes = [
    [{
      common_name: "Heartleaf Philodendron",
      scientific_name: "philodendron scandens",
      description: "This dainty and easy plant is also beneficial as it can certain air pollutants. Its heart-shaped leaves are variegated with hues of green. Place this climber in a partly shaded environment and water it every seven to ten days.",
      height: 20,
      price: 25,
      sun_level: 2, # partial sun
      water_level: 2, # well-drained
      care_level: 1 # easy
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_14_v2_2ba3c786-0870-4c50-a052-e56736415055_680X680cropresize.jpg" ]
    [{
      common_name: "Garden of Succulents",
      description: "Beautiful little garden of succulents in a container created in the same fashion as stained glass. This little garden requires good lighting (6 to 8 hours /day) and water only when the soil is dry.",
      height: 35,
      price: 125,
      sun_level: 1, # full sun
      water_level: 1, # dry soil
      care_level: 2 # medium
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_18_shoot2_76da24ce-e932-4aed-9d04-214f537254c5_680X680cropresize.jpg" ]
    [{
      common_name: "Aloe Vera Plant",
      scientific_name: "Aloe barbadensis",
      description: "The Aloe Vera’s thick leaves are filled with a southing jelly for burns – a practical plant to have on the kitchen’s window sill!  This plant prefers intense to medium lighting. Let its soil dry between waterings.",
      height: 35,
      price: 27,
      sun_level: 1,
      water_level: 1,
      care_level: 2
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_14_v2_2ba3c786-0870-4c50-a052-e56736415055_680X680cropresize.jpg" ]
]

puts "Creating plants..."

attributes.each do |attr|
  plant = Plant.new(attr[0])
  plant.save!
  plant.photo_url = attr[1]
end

puts "Finished!"
