class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  STATUS = ["approved", "pending", "rejected"]
  validates :status, inclusion: { in: STATUS }
end
