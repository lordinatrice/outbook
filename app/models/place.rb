class Place < ApplicationRecord
  CATAGORIES = ["terrace", "garden", "rooftop"]
  belongs_to :user
  has_many :bookings
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :capacity, presence: true
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
