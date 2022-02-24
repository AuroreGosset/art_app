class Artwork < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, :price_per_day, presence: true
  multisearchable against: [:title, :description]

  pg_search_scope :search_by_title_and_description,
    against: [:title, :description],
    associated_against: {
      user: [:username]
    },
    using: {
      tsearch: { prefix: true }
    }
end
