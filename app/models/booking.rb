class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :promotion
  has_one :review
end
