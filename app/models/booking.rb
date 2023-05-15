class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validate :start_date, :end_date, presence: true
  CATEGORY = ["approved", "pending", "rejected"]
  validate :status, inclusion: { in: CATEGORY }
end
