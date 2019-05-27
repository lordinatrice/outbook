class Place < ApplicationRecord
  CATEGORIES = ["Terrace", "Garden", "Rooftop"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :capacity, presence: true
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
