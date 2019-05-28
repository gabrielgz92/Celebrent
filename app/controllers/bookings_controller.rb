class BookingsController < ApplicationController
  before_action :set_booking, only: :edit, :update

  def edit
  end

  def update
  end

  private
  def booking_params
    params.require(:booking).permit(:status, :duration, :rate_per_hour, :user_id, :celebrity_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
