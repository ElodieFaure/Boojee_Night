class Bar < ApplicationRecord
  include PgSearch::Model

  CATEGORY = ["Bar", "Pub", "Night Club", "Salon de thé"]
  belongs_to :user
  has_many :promotions, dependent: :destroy
  has_many :bar_tags, dependent: :destroy
  has_many :bookings, through: :promotions
  has_many :reviews, through: :bookings
  has_many :tags, through: :bar_tags
  has_many_attached :photos


  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :average_price, presence: true
  validates :open_at, presence: true
  validates :close_at, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_by_address,
    against: [:address],
    using: {
      tsearch: { prefix: true }
    }

end
