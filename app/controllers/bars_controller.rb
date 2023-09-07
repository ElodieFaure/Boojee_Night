class BarsController < ApplicationController
  def index
    @bars = Bar.all
    if params[:search].present? && !params[:search][:promotions].blank?
      if params[:search][:promotions] == ["today"]
        @bars = @bars.joins(:promotions).where("start_date <= ? AND end_date >= ?", Date.today, Date.today)
      elsif params[:search][:promotions] == ["tomorrow"]
        @bars = @bars.joins(:promotions).where("start_date <= ? AND end_date >= ?", Date.tomorrow, Date.tomorrow)
      else
        @bars = @bars.joins(:promotions).where.not(promotions: nil)
      end
    end

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
    @promos = @bar.promotions.where("promotions.end_date >= ?", Date.today).order_by_start_asc
  end

end
