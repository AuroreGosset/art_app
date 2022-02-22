class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo
  validates :title, :price_per_day, presence: true
end
