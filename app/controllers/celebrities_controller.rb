class CelebritiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :landing]

  def index
    if params[:query].present?
      @celebrities = Celebrity.search_by_firs_name_and_last_name_and_description(params[:query])
    else
      @celebrities = Celebrity.all
    end
  end

  def show
    @celebrities = Celebrity.where.not(latitude: nil, longitude: nil)
    @celebrity = @celebrities.find(params[:id])
    @booking = Booking.new(rate_per_hour: @celebrity.rate_per_hour)

    @markers =
      {
        lat: @celebrity.latitude,
        lng: @celebrity.longitude
      }
  end

  def landing
    @celebrities = Celebrity.order('RANDOM()').first(4)
  end
end
