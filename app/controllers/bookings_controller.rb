class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user).order_start_by_asc

    if params[:select] == "pending"
      @bookings = @bookings.select_pending.order_start_by_asc
    end
    if params[:select] == "used"
      @bookings = @bookings.select_used.order_start_by_asc
    end
    if params[:select] == "expired"
      @bookings = @bookings.select_expired.order_start_by_asc
    end
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
    @qr_codes = []
    @bookings.each do |booking|
      @qr_codes << RQRCode::QRCode.new(booking.qr_code).as_svg
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Votre réservation a été mise à jour avec succès'
    else render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

private

  def booking_params
  params.require(:booking).permit(:qr_progress)
  end
end
