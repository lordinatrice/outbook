class Booking < ApplicationRecord
  STATUS = ["pending", "accepted", "refused"]
  belongs_to :user
  belongs_to :place
  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }
end
