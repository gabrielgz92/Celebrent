class BookingsController < ApplicationController
  before_action :set_celebrity, except: :destroy

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
    if @booking.update
      redirect_to @booking
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :duration, :rate_per_hour, :user_id, :celebrity_id)
  end

  def set_celebrity
    @celebrity = Celebrity.find(params[:celebrity_id])
  end
end
