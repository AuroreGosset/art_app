class Booking < ApplicationRecord
  belongs_to :artwork
  belongs_to :user

  validates :start_date, :end_date, :price, presence: true

  before_validation :set_price

  def set_price
    self.price = artwork.price_per_day * (end_date - start_date)
  end
end
