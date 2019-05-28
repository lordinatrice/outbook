class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
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
      flash[:notice] = "Well done! You successfully booked a place 🎉 "
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    else
      flash[:alert] = "Oops! 😱 a problem has occurred while booking your place "
      respond_to do |format|
        format.html { render :show }
        format.js
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:notice] = "You successfully destroyed a booking ☠️"
    redirect_to dashboard_paths('#nav-bookings')
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
