class BookingChannel < ApplicationCable::Channel
  def subscribed
    booking = Booking.find(params[:id])
    stream_for booking
  end

  # def validated_qr_code
  #   @booking = Booking.find(params[:id])
  #   if current_user == @booking.promotion.bar.user
  #     @booking.update(qr_progress: "used")
  #   end
  # end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
