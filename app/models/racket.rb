class Racket < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :brand, presence: true
end