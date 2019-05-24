class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    skip_policy_scope
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
    authorize @booking
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
