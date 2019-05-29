class CelebritiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @celebrities = Celebrity.all
  end

  def show
    @celebrity = Celebrity.find(params[:id])
    @booking = Booking.new(rate_per_hour: @celebrity.rate_per_hour)
  end

  def landing
  end
end
