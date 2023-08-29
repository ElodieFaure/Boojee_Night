class Promotion < ApplicationRecord
  belongs_to :bar
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
