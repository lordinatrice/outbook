class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def place_params
    params.require(:place).permit(:name, :address, :category, :capacity, :photo)
  end
end
