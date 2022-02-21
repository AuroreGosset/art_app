class Artwork < ApplicationRecord
  belongs_to :user

  validates :title, :price_per_day, presence: true
end
