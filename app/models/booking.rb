class Booking < ApplicationRecord
  belongs_to :artist
  belongs_to :user
 # validates :address
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, inclusion: { in: [ "pending", "accepted", "rejected"], allow_nil: false }
end

