class Activity < ApplicationRecord
  has_many :places, through: :joints
  validates :name, presence: true
end
