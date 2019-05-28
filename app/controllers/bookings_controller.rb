class BookingsController < ApplicationController
  # before_action :set_booking, only: [:edit, :update]
  before_action(:set_celebrity, except: :destroy)

  def new
    @booking = Booking.new
    render 'celebrities/:id'
  end

  def create
    @booking = Booking.new
    @booking.celebrity = @celebrity
    if @booking.save
      redirect_to @booking.celebrity
    else
      render :new
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

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end

  def set_celebrity
    @celebrity = Celebrity.find(params[:celebrity_id])
  end
end
