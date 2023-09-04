module Barman
  class BarsController < ApplicationController
    def index
      @user = current_user.id
      @bars = Bar.where(user_id: @user)
    end

    def show
      @bar = Bar.find(params[:id])
      @promos = @bar.promotions.select_upcoming.order_by_start_asc
      if params[:select] == "upcoming"
        @promos = @bar.promotions.select_upcoming.order_by_start_asc
      end
      if params[:select] == "past"
        @promos = @bar.promotions.select_past.order_by_start_asc
      end
    end

    def new
      @bar = Bar.new
    end

    def create
      @bar = Bar.new(bar_params)
      @bar.user_id = current_user.id
      if @bar.save && params[:bar][:tag_ids].present?
        @tags = Tag.where(id: params[:bar][:tag_ids])
        @tags.each do |tag|
          BarTag.new(bar: @bar, tag: tag)
        end
        redirect_to barman_bars_path, notice: 'Bar was successfully created'
      else
        render "barman/bars/new", status: :unprocessable_entity
      end
    end

    def edit
      @bar = Bar.find(params[:id])
    end

    def update
      @bar = Bar.find(params[:id])
      @bar.update(bar_params)
      redirect_to barman_bar_path(@bar), notice: 'Votre bar a été modifié avec succès !'
    end

    def destroy
      @bar = Bar.find(params[:id])
      @bar.destroy
      redirect_to barman_bars_path, status: :see_other
    end

    private

    def bar_params
      params.require(:bar).permit(:name, :brand, :address, :category, :description, :average_price, :open_at, :close_at, photos: [], tag_ids: [])
    end
  end
end
