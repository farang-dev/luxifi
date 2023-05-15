class Item < ApplicationRecord
  belongs_to :user
  belongs_to :user, through: :bookings
  validates :brand, :price, :category, :name, :gender, presence: true
end
