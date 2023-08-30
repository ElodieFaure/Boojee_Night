module Barman
  class BarsController < ApplicationController
    def index
      @user = current_user.id
      @bars = Bar.where(user_id: @user)
    end

    def show
      @bar = Bar.find(params[:id])
    end

    def new
      @bar = Bar.new
    end

    def create
      @bar = Bar.new(bar_params)
      @bar.user_id = current_user.id
      if @bar.save
        redirect_to barman_bars_path, notice: 'Bar was successfully created'
      end
    end

    def destroy
      @bar = Bar.find(params[:id])
      @bar.destroy
      redirect_to barman_bars_path, status: :see_other
    end

    private

    def bar_params
      params.require(:bar).permit(:name, :brand, :address, :category, :description, :average_price, :open_at, :close_at, photos: [])
    end
  end


end
