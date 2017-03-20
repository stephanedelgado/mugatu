class Artist < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :shoe_size, presence: true
  validates :height, presence: true
  validates :address, presence: true
  validates :daily_rate, presence: true
  validates :phone_number, presence: true
end
