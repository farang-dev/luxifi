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
Booking.destroy_all
Item.destroy_all
puts "clearing"
# Attributes are here
# for now 5 items for Women's(gender) Accessories(category)
# for now 5 items for Men's(gender) Wears(category)
# Seeding 10 items in total for development purpose
User.destroy_all
user = User.create(email: "email@me.com", password: "secret")
puts "making a user"

item_attributes = [
  {
    gender: "Women",
    category: "Clothing",
    name: " Halterneck Dress",
    brand: "Ferragamo",
    image_url: "https://cdn-images.farfetch-contents.com/19/70/75/50/19707550_44163407_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "Ferragamo dress for summer"
  },
  {
    gender: "Women",
    category: "Clothing",
    name: "Sleeveless Midi Dress",
    brand: "Ferragamo",
    image_url: "https://cdn-images.farfetch-contents.com/19/76/87/21/19768721_44249699_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "Ferragamo dress for summer"
  },
  {
    gender: "Women",
    category: "Clothing",
    name: "Asymmetric Dress",
    brand: "Ferragamo",
    image_url: "https://cdn-images.farfetch-contents.com/19/66/77/35/19667735_44107284_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "Ferragamo dress for summer"
  },
  {
    gender: "Women",
    category: "Clothing",
    name: "Shirred cotton Dress",
    brand: "Ferragamo",
    image_url: "https://cdn-images.farfetch-contents.com/20/24/05/48/20240548_50189098_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "Ferragamo dress for summer"
  },
  {
    gender: "Women",
    category: "Clothing",
    name: "Tie-dye Draped Slip Dress",
    brand: "Ferragamo",
    image_url: "https://cdn-images.farfetch-contents.com/19/13/68/32/19136832_44774724_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "Ferragamo dress for summer"
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "Geneva Seal Watch",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/16/98/71/16/16987116_34963264_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "gold watch"
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "GG Chain-link Belt",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/16/11/17/80/16111780_30344763_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "gold belt"
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "Double G Buckle Chain Belt",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/15/36/88/75/15368875_26915329_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "gold belt"
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "G-Timeless 29mm Watch",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/15/59/82/98/15598298_28079923_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "gold watch"
  },
  {
    gender: "Women",
    category: "Accessories",
    name: "Logo-charm Necklace",
    brand: "Gucci",
    image_url: "https://cdn-images.farfetch-contents.com/18/53/71/69/18537169_40037740_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "silver necklace"
  },
  {
    gender: "Women",
    category: "Bags",
    name: "Jitney 1.4 Top-handle Bag",
    brand: "Off-White",
    image_url: "https://cdn-images.farfetch-contents.com/19/78/10/99/19781099_44495383_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "off-white bag for summer"
  },
  {
    gender: "Women",
    category: "Bags",
    name: "Small City Tote Bag",
    brand: "Off-White",
    image_url: "https://cdn-images.farfetch-contents.com/20/01/77/30/20017730_45068077_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "off-white bag for summer"
  },
  {
    gender: "Women",
    category: "Bags",
    name: "Small Binder Shoulder Bag",
    brand: "Off-White",
    image_url: "https://cdn-images.farfetch-contents.com/19/32/17/45/19321745_44462200_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "off-white bag for summer"
  },
  {
    gender: "Women",
    category: "Bags",
    name: "Burrow-22 Shoulder Bag",
    brand: "Off-White",
    image_url: "https://cdn-images.farfetch-contents.com/16/86/86/51/16868651_f58a9666-fe11-48fe-a790-6e9224ae447b_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "off-white bag for summer"
  },
  {
    gender: "Women",
    category: "Bags",
    name: "Jitney 1.4 Top-handle Bag",
    brand: "Off-White",
    image_url: "https://cdn-images.farfetch-contents.com/19/77/93/54/19779354_45171510_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "off-white bag for summer"
  },
  {
    gender: "Women",
    category: "Shoes",
    name: "Rockstud Point-toe Pumps",
    brand: "Valentino",
    image_url: "https://cdn-images.farfetch-contents.com/19/49/33/37/19493337_50143936_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "valentino pumps for summer"
  },
  {
    gender: "Women",
    category: "Shoes",
    name: "Rockstud 100mm Leather Sandals",
    brand: "Valentino",
    image_url: "https://cdn-images.farfetch-contents.com/19/21/62/26/19216226_50154242_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "valentino sandals for summer"
  },
  {
    gender: "Women",
    category: "Shoes",
    name: "Rockstud 60mm Leather Mules",
    brand: "Valentino",
    image_url: "https://cdn-images.farfetch-contents.com/19/95/34/66/19953466_45288305_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "valentino mules for summer"
  },
  {
    gender: "Women",
    category: "Shoes",
    name: "50mm Leather Slingback Pumps",
    brand: "Valentino",
    image_url: "https://cdn-images.farfetch-contents.com/20/24/05/72/20240572_50186766_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "valentino pumps for summer"
  },
  {
    gender: "Women",
    category: "Shoes",
    name: " 55mm Leather Sandals",
    brand: "Valentino",
    image_url: "https://cdn-images.farfetch-contents.com/19/36/10/29/19361029_50104074_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "valentino sandals for summer"
  },
  {
    gender: "Men",
    category: "Clothing",
    name: "Vintage Cult",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/19/26/40/41/19264041_42406521_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "vintage coat"
  },
  {
    gender: "Men",
    category: "Clothing",
    name: "Gianfranco Ferré Pre-Owned",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/16/70/56/29/16705629_32879151_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "coat"
  },
  {
    gender: "Men",
    category: "Clothing",
    name: "Single-breasted Linen Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/20/12/96/07/20129607_50181148_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "linen suit"
  },
  {
    gender: "Men",
    category: "Clothing",
    name: "Single-breasted Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/16/94/55/02/16945502_33876479_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "black suit"
  },
  {
    gender: "Men",
    category: "Clothing",
    name: "Two-piece Tailored Suit",
    brand: "Prada",
    image_url: "https://cdn-images.farfetch-contents.com/14/62/30/21/14623021_22596813_1000.jpg",
    price: Faker::Commerce.price.to_i,
    user: user,
    comment: "Good condition. Comfortable to wear. Style up your look with this item.",
    tag: "gray suit"
  }
]

puts "creating..."
# Iterate and create objects
item_attributes.each do |attribute|
  Item.create(attribute)
end
puts "created #{Item.count} items"
