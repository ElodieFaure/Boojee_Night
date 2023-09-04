class AddQrCodeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :qr_code, :string
  end
end
