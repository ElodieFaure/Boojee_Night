class Promotion < ApplicationRecord
  belongs_to :bar
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  scope :order_by_start_asc, -> { order('start_date ASC') }
  scope :select_past, -> { where("promotions.end_date < ?", Date.today) }
  scope :select_upcoming, -> { where("promotions.end_date >= ?", Date.today) }
end
