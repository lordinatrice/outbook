class PlacesController < ApplicationController
  def index
    @places = Place.all
    skip_policy_scope
  end

  def show
    @place = Place.find(params[:id])
    authorize @place
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    authorize @place
    if @place.save
      flash[:notice] = "Well done! You successfully added a place 🎉 "
      redirect_to dashboard_path
    else
      flash[:alert] = "Oops! 😱 a problem has occurred while creating your place "
      render :new
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    flash[:notice] = "You successfully deleted a place ☠️"
    redirect_to dashboard_path
    authorize @place
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :category, :capacity, :photo, :photo2, :photo3)
  end
end
