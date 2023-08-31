class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
    if params[:sort] == "start-asc"
      @bookings = @bookings.order_start_by_asc
    end
    if params[:sort] == "start-desc"
      @bookings = @bookings.order_start_by_desc
    end
    if params[:sort] == "end-asc"
      @bookings = @bookings.order_end_by_asc
    end
    if params[:sort] == "end-asc"
      @bookings = @bookings.order_end_by_desc
    end
  end

  def create
    @promotion = Promotion.find(params[:promotion_id])
    @booking = Booking.new
    @booking.promotion = @promotion
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path, notice: "réservation créée"
    else
      redirect_to bar_promotion(@promotion), notice: "échec de réservation"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
