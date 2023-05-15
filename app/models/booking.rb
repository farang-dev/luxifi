class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validate :start_date, :end_date, presence: true
  STATUS = ["approved", "pending", "rejected"]
  validate :status, inclusion: { in: STATUS }
end
