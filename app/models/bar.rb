class Bar < ApplicationRecord
  belongs_to :user
  has_many :promotions
  has_many :bar_tags

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :average_price, presence: true
  validates :open_at, presence: true
  validates :close_at, presence: true

end
