class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :message_to_host, presence: true
end
