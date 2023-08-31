class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :promotion
  has_one :review, dependent: :destroy

  scope :order_start_by_asc, -> { joins(:promotion).order('start_date ASC') }
  scope :order_start_by_desc, -> { joins(:promotion).order('start_date DESC') }
  scope :order_end_by_asc, -> { joins(:promotion).order('end_date ASC') }
  scope :order_end_by_desc, -> { joins(:promotion).order('end_date DESC') }
end
