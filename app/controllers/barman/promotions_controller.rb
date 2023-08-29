module Barman
  class PromotionsController < ApplicationController
    def new
      @bar = Bar.find(params[:bar_id])
      @promotion = Promotion.new
    end

    def create
      @bar = Bar.find(params[:bar_id])
      @promotion = Promotion.new(promotion_params)
      @promotion.bar_id = @bar.id
      if @promotion.save
        redirect_to barman_bar_path(@bar), notice: 'Promotion was successfully created'
      end
    end

    def edit
      @bar = Bar.find(params[:bar_id])
      @promotion = Promotion.find(params[:id])
    end

    def update
      @bar = Bar.find(params[:bar_id])
      @promotion = Promotion.find(params[:id])
      @promotion.update(promotion_params)
      redirect_to barman_bar_path(@bar), notice: 'Bar was successfully updated'
    end

    def destroy
      @bar = Bar.find(params[:bar_id])
      @promotion = Promotion.find(params[:id])
      @promotion.destroy
      redirect_to barman_bar_path(@bar), status: :see_other
    end
  end
end

def promotion_params
  params.require(:promotion).permit(:name, :offer, :start_date, :end_date)
end
