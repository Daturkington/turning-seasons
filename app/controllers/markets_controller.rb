class MarketsController < ApplicationController
  def index
    @markets = Market.geocoded

    @markers = @markets.map do |market|
      {
        lat: market.latitude,
        lng: market.longitude,
      }
    end
  end
end
