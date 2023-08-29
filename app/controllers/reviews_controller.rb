class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path, notice: "commentaire créé"
    else
      redirect_to new_booking_review_path(@booking), notice: "échec de soummission de commentaire"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
