class MarketsController < ApplicationController
  def index
    @markets = Market.near(current_user.address, 3).geocoded
    @markers = @markets.map do |market|
      {
        lat: market.latitude,
        lng: market.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { market: market }),
        image_url: helpers.asset_url('map_marker.png')
      }
    end
  end
end
