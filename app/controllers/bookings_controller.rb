class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def delete

  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
