class BarsController < ApplicationController
  def index
    @bars = Bar.all
    if params[:search].present? && !params[:search][:tags].blank?
      @bars = @bars.joins(:bar_tags).where(bar_tags: { tag_id: params[:search][:tags] })
    end

    if params[:search].present? && !params[:search][:query].blank?
      @bars = @bars.search_by_address(params[:search][:query])
    end

    @bars = @bars.geocoded.to_a.uniq
    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bar: bar}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @bar = Bar.find(params[:id])
    @promos = @bar.promotions
  end

end
