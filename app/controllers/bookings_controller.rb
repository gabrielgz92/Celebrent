class BookingsController < ApplicationController
  before_action :set_booking, except: [:create, :index]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.celebrity = @celebrity
    @booking.rate_per_hour = @celebrity.rate_per_hour
    @booking.user = current_user
    @booking.status = 'Pending'
    if @booking.save
      redirect_to celebrities_path
    else
      render 'celebrities/show'
    end
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :duration, :rate_per_hour, :user_id, :celebrity_id)
  end

  def set_booking
    @bookings = Booking.find(params[:id])
  end
end
