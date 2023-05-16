class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :start_date, presence: true
  validates :end_date, presence: true
  STATUS = ["approved", "pending", "rejected"]
  validates :status, inclusion: { in: STATUS }
end
