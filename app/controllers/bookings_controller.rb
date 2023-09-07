class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user).select_not_expired.order_start_by_asc

    if params[:select] == "pending"
      @bookings = @bookings.select_pending.order_start_by_asc
    end
    if params[:select] == "used"
      @bookings = @bookings.select_used.order_start_by_asc
    end
    if params[:select] == "expired"
      @bookings = Booking.where(user: current_user).select_expired.order_start_by_asc
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
    if current_user == @booking.promotion.bar.user
      @booking.update(qr_progress: "used")
      if @booking.bar.bookings.where(user: @booking.user).used.size == 3
        @promo_gift = Promotion.create(name: "🥳 Avantage fidélité -50% lors de votre prochaine visite!", bar_id: @booking.bar.id, offer:"-50% lors de votre prochaine visite!", start_date: Date.today, end_date: (Date.today + 7) )
        Booking.create(user: @booking.user, promotion_id: @promo_gift.id)
      end
      UserChannel.broadcast_to(@booking.user, render_to_string(partial: "shared/qr_code_flash", locals: { booking: @booking } ) )
    end
    redirect_to barman_bar_path(@booking.promotion.bar)
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Votre réservation a été mise à jour avec succès'
    else
      render :edit
    end

  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.qr_progress == "pending"

      @booking.destroy
      redirect_to bookings_path
    else
      redirect_to bookings_path, notice: "Les réservations expirées et utilisées ne peuvent plus être supprimées."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:qr_progress)
  end
end
