# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Item.create(name: "Geneva Seal Watch", category: "Watches", brand:"Gucci", image_url: "https://cdn-images.farfetch-contents.com/16/98/71/16/16987116_34963264_1000.jpg", gender: "Women", price: 50)
# Item.create(name: "Balmain", category: "Tops", brand: "Louis Vuitton", image_url: "https://cdn-images.farfetch-contents.com/19/68/48/75/19684875_43934652_1000.jpg", gender: "Men", price: 45)
# Instead of seeding objects one by one like above, attributes are organized
# in the hash format so that the attributes can be iterated or added/deleted easily.
require 'faker'

# Clear existing data
Item.destroy_all

# Attributes are here
# for now 5 items for Women's(gender) Accessories(category)
# for now 5 items for Men's(gender) Wears(category)
# Seeding 10 items in total for development purpose

item_attributes = [
  {
    gender: "Women",
    category: "Accessories",
    name: "Geneva Seal Watch",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/16/98/71/16/16987116_34963264_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "GG Chain-link Belt",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/16/11/17/80/16111780_30344763_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "Double G Buckle Chain Belt",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/15/36/88/75/15368875_26915329_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "G-Timeless 29mm Watch",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/15/59/82/98/15598298_28079923_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "Logo-charm Necklace",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/18/53/71/69/18537169_40037740_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Men",
    category: "Wears",
    name: "Vintage Cult",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/19/26/40/41/19264041_42406521_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Men",
    category: "Wears",
    name: "Gianfranco Ferré Pre-Owned",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/16/70/56/29/16705629_32879151_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Men",
    category: "Wears",
    name: "Single-breasted Linen Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/20/12/96/07/20129607_50181148_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Men",
    category: "Wears",
    name: "Single-breasted Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/16/94/55/02/16945502_33876479_1000.jpg",
    price: Faker::Commerce.price.to_i
  },
  {
    gender: "Men",
    category: "Wears",
    name: "Two-piece Tailored Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/14/62/30/21/14623021_22596813_1000.jpg",
    price: Faker::Commerce.price.to_i
  }
]

# Iterate and create objects
item_attributes.each do |attribute|
  Item.create(attribute)
end
