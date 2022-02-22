class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artworks
  has_many :bookings
  has_many :booked_artworks, through: :bookings, source: :artwork

  validates :username, :email, presence: true, uniqueness: true
end
