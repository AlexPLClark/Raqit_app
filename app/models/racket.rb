class Racket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :brand, presence: true
end
