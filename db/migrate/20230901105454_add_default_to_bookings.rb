class AddDefaultToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :qr_progress, from: nil, to: 0
  end
end
