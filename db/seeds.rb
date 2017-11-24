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
      price_cents: 2500,
      sun_level: 2, # partial sun
      water_level: 2, # well-drained
      care_level: 1, # easy
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_14_v2_2ba3c786-0870-4c50-a052-e56736415055_680X680cropresize.jpg" ],
    [{
      common_name: "Garden of Succulents",
      description: "Beautiful little garden of succulents in a container created in the same fashion as stained glass. This little garden requires good lighting (6 to 8 hours /day) and water only when the soil is dry.",
      height: 12,
      price_cents: 12500,
      sun_level: 3, # full sun
      water_level: 1, # dry soil
      care_level: 2, # medium
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_18_shoot2_76da24ce-e932-4aed-9d04-214f537254c5_680X680cropresize.jpg" ],
    [{
      common_name: "Aloe Vera Plant",
      scientific_name: "Aloe barbadensis",
      description: "The Aloe Vera’s thick leaves are filled with a southing jelly for burns – a practical plant to have on the kitchen’s window sill!  This plant prefers intense to medium lighting. Let its soil dry between waterings.",
      height: 12,
      price_cents: 2700,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_06_shoot_3_2017_1b1c150c-f06a-4c53-8ab3-9d20592113cd_680X680cropresize.jpg" ],
    [{
      common_name: "Bird's-nest Fern",
      scientific_name: "Asplenium nidus",
      description: "This fern is impressive because of its apple green leaves that form an central rosette. This plant prefers good light but will tolerate low lighting. Maintain its soil slightly damp. Pot diameter: 6 inches.",
      height: 16,
      price_cents: 5700,
      sun_level: 2,
      water_level: 3,
      care_level: 2,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_01_shoot_3_2017_b094e4f8-2a04-4037-8a98-8fffc67d06d8_680X680cropresize.jpg" ],
    [{
      common_name: "Butterfly Orchid",
      scientific_name: "Phalaenopsis sp.",
      description: "This tropical plant is adorned with long lasting flowers. It prefers good light in the winter and half-shade  in the summertime. Let its soil slightly dry between waterings. Pot diameter: 4 inches.",
      height: 10,
      price_cents: 5700,
      sun_level: 2,
      water_level: 2,
      care_level: 3,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_02_shoot_3_2017_62b2831e-7387-4dc7-b3b0-5ab43579d3bf_680X680cropresize.jpg" ],
    [{
      common_name: "Opuntia Cactus",
      scientific_name: "Opuntia microdasys",
      description: "This cactus in a terracotta and blue-grey pot, 4 inches in diameter, is a reminder of the desert and the scorching sun... The Opuntia cactus prefers intense lighting. Let its soil thoroughly dry between waterings.",
      height: 9,
      price_cents: 4400,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_07_shoot_3_2017_0a7b4982-c12a-4a42-a619-a51a67f99280_680X680cropresize.jpg" ],
    [{
      common_name: "Moss Hexagon",
      description: "Hanging frame of stabilized mosses: no maintenance required! So easy...",
      height: 12,
      price_cents: 11500,
      sun_level: 1,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_05_shoot_3_2017_2ec775c1-c9ed-406b-bb08-e71d1a781d25_680X680cropresize.jpg" ],
    [{
      common_name: "Suspended Glass Tear Drop",
      description: "Embellish your windows with this lovely suspended terrarium! The glass tear drop contains a variety of tiny succulents. These plants prefer good light with a soil that you will let dry between waterings.",
      height: 9,
      price_cents: 3500,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 1
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_08_shoot_3_2017_2241b7c0-728e-41df-983f-3d41e984cc95_680X680cropresize.jpg" ],
    [{
      common_name: "Bowl of Succulents",
      description: "This large bowl (14 inches in diameter) is made of grey colored resin and is filled with adorable succulents! These plants prefer good lighting. Let the soil dry between waterings.",
      height: 6,
      price_cents: 15500,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_09_shoot_3_2017_5522298d-798c-42c5-a602-d70881794d09_680X680cropresize.jpg" ],
    [{
      common_name: "Cycas",
      scientific_name: "Cycas revoluta",
      description: "The Cycas is one of the oldest plants leaving on our planet. Its fronds are prickly and shinny. This plant needs abundant to medium light. Let its soil dry between watering. Pot diameter: 6 inches.",
      height: 14,
      price_cents: 6700,
      sun_level: 2,
      water_level: 1,
      care_level: 2,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_12_shoot_3_2017_0c5b540b-fcb9-48ac-ad3f-af09b948e927_680X680cropresize.jpg" ],
    [{
      common_name: "Suspended Glass Sphere",
      description: "This suspended terrarium of succulents is 10 inches wide. A thick jute cord allows you to hang this beauty. Jute cord length: 14 inches.",
      height: 10,
      price_cents: 9500,
      sun_level: 3,
      water_level: 1,
      care_level: 1,
      size: 1,
      suspended: 1
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_plante_15_shoot_3_2017_0bdec6d5-8120-4b1c-8296-c0eb9fd0d94c_680X680cropresize.jpg" ],
    [{
      common_name: "Garden of Plants",
      description: "This miniature garden of plants is set in a terracotta and blue- grey container, approximately 6 inches in diameter. Succulents prefer good light with a soil that you will let dry between waterings.",
      height: 6,
      price_cents: 3900,
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
      price_cents: 2900,
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
      price_cents: 2300,
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
      price_cents: 3200,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_24_v2_54be16d3-f402-4721-9422-11a349085c64_680X680cropresize.jpg" ],
    [{
      common_name: "Delosperma",
      scientific_name: "Delosperma Taylorii",
      description: "This succulent drooping blooms in abundant light, not to mention the direct sun of the morning during the summer season. Let the soil dry between the waterings.",
      height: 10,
      price_cents: 5500,
      sun_level: 3,
      water_level: 1,
      care_level: 2,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_11_shoot2_82efd4d2-bfe7-405a-830c-19784ff675e8_680X680cropresize.jpg" ],
    [{
      common_name: "Large terrarium of succulents",
      description: "This succulent garden is 25.4 cm (10 inches) in diameter. For maintenance: abundant light and watering every three to four weeks.",
      height: 8,
      price_cents: 7900,
      sun_level: 3,
      water_level: 1,
      care_level: 1,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_9_v3_9e0a704c-e9c7-46e5-9840-f385aed00d0a_680X680cropresize.jpg" ],
    [{
      common_name: "Pothos",
      scientific_name: "Scindapsus pictus 'Argyraeus",
      description: "Pretty climbing plant with variegated green and silver foliage. This one prefers the partial shade. Allow the soil to dry slightly between waterings.",
      height: 8,
      price_cents: 7900,
      sun_level: 2,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_10_shoot_2_v2_0f513b73-d4a1-4f85-a391-c8065646a0d2_680X680cropresize.jpg" ],
    [{
      common_name: "Moose horn containing cylindrical",
      scientific_name: "Platycerium bifurcatum",
      description: "Just like a trophy, this beautiful fern beautifully embellishes a room. Its foliage is covered with pruine, a powdery substance that retains moisture and gives a silvery aspect to its fronds. She tolerates half shade.",
      height: 16,
      price_cents: 7000,
      sun_level: 2,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_18_v2_ada41f31-16b4-4b06-b1e9-b79cb570bbb7_680X680cropresize.jpg" ],
    [{
      common_name: "Senecio in terrarium Paz",
      scientific_name: "senecio stapeliiformis",
      description: "This succulent with erect stems denotes a simple appearance, but weird. It stirs our curiosity ... The glass container is stowed like stained glass. It is deposited and suspended thanks to a delicate chain.",
      height: 13,
      price_cents: 9500,
      sun_level: 2,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_21_v2_0f23890f-0847-4265-925a-a511b1ecb83c_680X680cropresize.jpg" ],
    [{
      common_name: "Rubber plant",
      scientific_name: "ficus elastica",
      description: " The rubber plant is back! The easiest of the fig trees, it is comfortable in mid-shaded environment. In the shade, its purple foliage will become greenish. Let the soil dry between waterings. ",
      height: 24,
      price_cents: 5500,
      sun_level: 1,
      water_level: 1,
      care_level: 1,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_27_v2_6d7a41c9-11f3-472e-8627-2d261555074d_680X680cropresize.jpg" ],
    [{
      common_name: "Alocasia",
      scientific_name: "Alocasia micholitziana",
      description: "Remarkable tropical plant with forest-green foliage and contrasting whitish veins. It prefers a good luminosity and it leaves to dry its soil between the waterings.",
      height: 24,
      price_cents: 5000,
      sun_level: 3,
      water_level: 2,
      care_level: 3,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_3_shoot2_33fac653-5582-4ef9-acaa-0b3bb1d55191_680X680cropresize.jpg" ],
    [{
      common_name: "Anthurium",
      scientific_name: "Anthurium andreanum",
      description: "This attractive plant, with ribbed foliage, produces bracts of different colors: white, pink, red, even chocolate! This plant enjoys abundant watering and a bright mid-shaded location. ",
      height: 10,
      price_cents: 5000,
      sun_level: 3,
      water_level: 3,
      care_level: 3,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_3_v2_f80f0deb-5989-4529-8189-8c2f4be278db_680X680cropresize.jpg" ],
    [{
      common_name: "Xerographica",
      scientific_name: "Tillandsia xerographica",
      description: "Tillandsia are plants that grow without potting soil! These bromeliads require intense lighting and a lot of moisture.",
      height: 10,
      price_cents: 6500,
      sun_level: 1,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/produit_17_shoot2_c9b03ae0-bf80-4a62-a97d-7bf59fc660cd_680X680cropresize.jpg" ],
    [{
      common_name: "Euphorbia",
      scientific_name: "Euphorbia trigona",
      description: "Euphorbia looks like a cactus, but it is not a plant of this kind. Nevertheless, it is maintained just like a cactus, that is to say by placing it in a luminous or even sunny environment and by watering it every four to six weeks. ",
      height: 11,
      price_cents: 2900,
      sun_level: 3,
      water_level: 1,
      care_level: 1,
      size: 2,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_4_v2_3b6c8b26-4572-455d-a7e7-7a435cdbf852_680X680cropresize.jpg" ],
    [{
      common_name: "Chestnut tree from Guiana",
      scientific_name: "Pachira aquatica",
      description: "For the Chinese, this plant means fortune and luck. Its lustrous leaflets are bright green. Chestnut from Guyana prefers intense lighting (no direct sun) to medium and a humid atmosphere. Let its soil dry between waterings.",
      height: 20,
      price_cents: 4900,
      sun_level: 3,
      water_level: 2,
      care_level: 3,
      size: 3,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_29_v2_13ca4e5f-fb1e-4297-a82a-739736ade6b3_680X680cropresize.jpg" ],
    [{
      common_name: "Haworthia in copper cup",
      scientific_name: "Haworthia attenuata v raduta",
      description: " The haworthia prefers good luminosity, but tolerates half-shaded light conditions. Attention: the direct and continuous sun rust its foliage! It is watered every four weeks. ",
      height: 5,
      price_cents: 2400,
      sun_level: 2,
      water_level: 1,
      care_level: 1,
      size: 1,
      suspended: 0
    },
    "https://cdn.monpanierdachat.com/1821/manipulated/ver_produit_site_15_v2_2598147e-2caf-4123-ac4c-f6af24d2e2fe_680X680cropresize.jpg" ],
]

puts "Creating plants..."

attributes.each do |attr|
  plant = Plant.new(attr[0])
  plant.save!
  plant.photo_url = attr[1]
end

puts "Finished!"
