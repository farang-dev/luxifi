# "Tops", "Pants", "T-shirt", "Skirts and Shorts","Jackets", "Coats", "Tailoring"
# Could add these to CATEGORY but keeping it small for now

class Item < ApplicationRecord
  has_many :bookings
  has_one :user, through: :bookings
  CATEGORY = ["Wears", "Bags", "Accessories"]
  validates :item, inclusion: { in: [CATEGORY] }
  validates :brand, :price, :category, :name, :gender, presence: true
end
