class PlacesController < ApplicationController
  def show
    @place = Place.find(param[:id])
  end
end
