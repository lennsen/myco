class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :space_type, presence: true
  # validates :photo, presence: true
  validates :location, presence: true
  validates :price_per_month, presence: true, numericality: { only_integer: true }, inclusion: { in: 20..1000 }
end
