class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @places = current_user.places
    @bookings = current_user.bookings
    skip_policy_scope
  end
end
