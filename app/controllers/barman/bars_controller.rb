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
      if @bar.save && params[:tags_ids].present?
        @tags = Tag.where(params[:tag_ids])
        @tags.each do |tag|
          BarTag.new(bar: @bar, tag: tag)
        end
        redirect_to barman_bars_path, notice: 'Bar was successfully created'
      else
        render "barman/new", status: :unprocessable_entity
      end
    end

    def destroy
      @bar = Bar.find(params[:id])
      @bar.destroy
      redirect_to barman_bars_path, status: :see_other
    end
  end
end

private

def bar_params
  params.require(:bar).permit(:name, :address, :category, :description, :average_price, :open_at, :close_at, tag_ids: [])
end
