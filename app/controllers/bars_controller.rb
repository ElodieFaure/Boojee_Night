class BarsController < ApplicationController
  def index
    @bars = Bar.all
    @markers = @bars.geocoded.map do |bar|
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
