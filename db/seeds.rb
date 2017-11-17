# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
OrderItem.delete_all
Plant.delete_all

attributes = [
    [{
      common_name: "Heartleaf Philodendron",
      scientific_name: "Philodendron scandens",
      description: "This dainty and easy plant is also beneficial as it can certain air pollutants. Its heart-shaped leaves are variegated with hues of green. Place this climber in a partly shaded environment and water it every seven to ten days.",
      height: 8,
      price: 25,
      sun_level: 2, # partial sun
      water_level: 2, # well-drained
      care_level: 1, # easy
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_14_v2_2ba3c786-0870-4c50-a052-e56736415055_680X680cropresize.jpg" ],
    [{
      common_name: "Garden of Succulents",
      description: "Beautiful little garden of succulents in a container created in the same fashion as stained glass. This little garden requires good lighting (6 to 8 hours /day) and water only when the soil is dry.",
      height: 12,
      price: 125,
      sun_level: 3, # full sun
      water_level: 1, # dry soil
      care_level: 2, # medium
      size: 4,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_18_shoot2_76da24ce-e932-4aed-9d04-214f537254c5_680X680cropresize.jpg" ],
    [{
      common_name: "Aloe Vera Plant",
      scientific_name: "Aloe barbadensis",
      description: "The Aloe Vera’s thick leaves are filled with a southing jelly for burns – a practical plant to have on the kitchen’s window sill!  This plant prefers intense to medium lighting. Let its soil dry between waterings.",
      height: 12,
      price: 27,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_06_shoot_3_2017_1b1c150c-f06a-4c53-8ab3-9d20592113cd_680X680cropresize.jpg" ],
    [{
      common_name: "Bird's-nest Fern",
      scientific_name: "Asplenium nidus",
      description: "This fern is impressive because of its apple green leaves that form an central rosette. This plant prefers good light but will tolerate low lighting. Maintain its soil slightly damp. Pot diameter: 6 inches.",
      height: 16,
      price: 57,
      sun_level: 2,
      water_level: 3,
      care_level: 2,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_01_shoot_3_2017_b094e4f8-2a04-4037-8a98-8fffc67d06d8_680X680cropresize.jpg" ],
    [{
      common_name: "Butterfly Orchid",
      scientific_name: "Phalaenopsis sp.",
      description: "This tropical plant is adorned with long lasting flowers. It prefers good light in the winter and half-shade  in the summertime. Let its soil slightly dry between waterings. Pot diameter: 4 inches.",
      height: 10,
      price: 57,
      sun_level: 2,
      water_level: 2,
      care_level: 3,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_02_shoot_3_2017_62b2831e-7387-4dc7-b3b0-5ab43579d3bf_680X680cropresize.jpg" ],
    [{
      common_name: "Opuntia Cactus",
      scientific_name: "Opuntia microdasys",
      description: "This cactus in a terracotta and blue-grey pot, 4 inches in diameter, is a reminder of the desert and the scorching sun... The Opuntia cactus prefers intense lighting. Let its soil thoroughly dry between waterings.",
      height: 9,
      price: 44,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_07_shoot_3_2017_0a7b4982-c12a-4a42-a619-a51a67f99280_680X680cropresize.jpg" ],
    [{
      common_name: "Moss Hexagon",
      description: "Hanging frame of stabilized mosses: no maintenance required! So easy...",
      height: 12,
      price: 115,
      sun_level: 1,
      water_level: 1,
      care_level: 1,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_05_shoot_3_2017_2ec775c1-c9ed-406b-bb08-e71d1a781d25_680X680cropresize.jpg" ],
    [{
      common_name: "Suspended Glass Tear Drop",
      description: "Embellish your windows with this lovely suspended terrarium! The glass tear drop contains a variety of tiny succulents. These plants prefer good light with a soil that you will let dry between waterings.",
      height: 9,
      price: 35,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 2,
      suspended: 1
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_08_shoot_3_2017_2241b7c0-728e-41df-983f-3d41e984cc95_680X680cropresize.jpg" ],
    [{
      common_name: "Bowl of Succulents",
      description: "This large bowl (14 inches in diameter) is made of grey colored resin and is filled with adorable succulents! These plants prefer good lighting. Let the soil dry between waterings.",
      height: 6,
      price: 155,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 4,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_09_shoot_3_2017_5522298d-798c-42c5-a602-d70881794d09_680X680cropresize.jpg" ],
    [{
      common_name: "Cycas",
      scientific_name: "Cycas revoluta",
      description: "The Cycas is one of the oldest plants leaving on our planet. Its fronds are prickly and shinny. This plant needs abundant to medium light. Let its soil dry between watering. Pot diameter: 6 inches.",
      height: 14,
      price: 67,
      sun_level: 2,
      water_level: 1,
      care_level: 2,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_12_shoot_3_2017_0c5b540b-fcb9-48ac-ad3f-af09b948e927_680X680cropresize.jpg" ],
    [{
      common_name: "Suspended Glass Sphere",
      description: "This suspended terrarium of succulents is 10 inches wide. A thick jute cord allows you to hang this beauty. Jute cord length: 14 inches.",
      height: 10,
      price: 95,
      sun_level: 3,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 1
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_15_shoot_3_2017_0bdec6d5-8120-4b1c-8296-c0eb9fd0d94c_680X680cropresize.jpg" ],
    [{
      common_name: "Garden of Plants",
      description: "This miniature garden of plants is set in a terracotta and blue- grey container, approximately 6 inches in diameter. Succulents prefer good light with a soil that you will let dry between waterings.",
      height: 6,
      price: 39,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_03_shoot_3_2017_17fa3a81-ec4f-41a4-ac83-8c4ce6d3aba7_680X680cropresize.jpg" ],
    [{
      common_name: "Small Succulent Terrarium",
      description: "This succulent and cacti garden measures 15.24 cm (6 inches) in diameter. An easy arrangement to maintain: abundant light and watering every four to six weeks.",
      height: 6,
      price: 29,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0,
      special_care: "Water every 4 to 6 weeks"
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_10_v3_912c7fc4-a47e-4f8c-8642-aa7dbc0ec029_680X680cropresize.jpg" ],
    [{
      common_name: "Cactus in a cactus pot",
      scientific_name: "Opuntia sp.",
      description: "This fun plant design consists of a small cactus in a small pot shaped like a cactus. To maintain the plant, place it in abundant light and water it every three to four weeks.",
      height: 5,
      price: 23,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0,
      special_care: "Water every 3 to 4 weeks"
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_12_v2_df5f8bbd-83dd-4d21-b9a0-de5cf1aa91e5_680X680cropresize.jpg" ],
    [{
      common_name: "Aloe in a small cement pot",
      scientific_name: "Aloe sp.",
      description: "This variety of Aloe is a sweet reminder of summer days, the sun and good times… Not bad for such a tiny succulent! The Aloe Plant prefers abundant lighting. Let the soil dry before watering.",
      height: 4,
      price: 32,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_24_v2_54be16d3-f402-4721-9422-11a349085c64_680X680cropresize.jpg" ],
]

puts "Creating plants..."

attributes.each do |attr|
  plant = Plant.new(attr[0])
  plant.save!
  plant.photo_url = attr[1]
end

puts "Finished!"
