class PromotionsController < ApplicationController
  def show
    @promotion = Promotion.find(params[:id])
    @booking = Booking.new
  end
end
