class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :spaces
  has_many :hostings, through: :spaces, source: :bookings
  has_many :bookings

  validates :email, presence: true
end
