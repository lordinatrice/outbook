class PlacesController < ApplicationController
  def show
    @place = Place.find(param[:id])
  def index
    @places = Place.all
  end
end
