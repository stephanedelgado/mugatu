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
  validates_format_of :phone_number, with: /^(\+86)(13[0-9]|145|147|15[0-3,5-9]|18[0,2,5-9])(\d{8})$/,  :multiline => true
  validates :gender, presence: true
  has_attachments :photos, maximum: 6
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
