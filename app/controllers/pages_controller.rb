class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings_as_owner = current_user.bookings_as_owner
  end
end
