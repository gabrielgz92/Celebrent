class BookingsController < ApplicationController

  def edit
  end

  def update

  end

  private
  def booking_params
    params.require(:booking).permit(:status, :duration)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
