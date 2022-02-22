class Booking < ApplicationRecord
  belongs_to :artwork
  belongs_to :user

  validates :start_date, :end_date, :booking_price, presence: true
end
