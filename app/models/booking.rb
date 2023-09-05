class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :promotion
  has_one :review, dependent: :destroy
  enum :qr_progress, [:pending, :used, :expired]

  after_create :fill_qr_code

  def qr_progress_labels
    {
      pending: 'à venir',
      used: 'utilisée',
      expired: 'expirée'
    }
  end

  def fill_qr_code
    update(qr_code: "#{ENV["DOMAIN_URL"]}/bookings/#{id}/edit")
  end

  scope :order_start_by_asc, -> { joins(:promotion).order('start_date ASC') }
  scope :order_start_by_desc, -> { joins(:promotion).order('start_date DESC') }
  scope :order_end_by_asc, -> { joins(:promotion).order('end_date ASC') }
  scope :order_end_by_desc, -> { joins(:promotion).order('end_date DESC') }
  scope :select_pending, -> { where(qr_progress: 0) }
  scope :select_used, -> { where(qr_progress: 1) }
  scope :select_expired, -> { where(qr_progress: 2) }
  scope :select_not_expired, -> { where.not(qr_progress: 2) }
end
