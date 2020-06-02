class UsersController < ApplicationController
  def show
    @user = current_user

    @markets = Market.geocoded
    @markers = @markets.map do |market|
      {
        lat: market.latitude,
        lng: market.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { market: market })
      }
    end
  end
end
