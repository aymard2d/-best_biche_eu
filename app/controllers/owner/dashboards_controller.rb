class Owner::DashboardsController < ApplicationController
  def show
    @animals = Animal.where(owner: current_user)
    @bookings = Booking.where(user: current_user)

  end
end
