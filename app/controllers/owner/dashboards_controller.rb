class Owner::DashboardsController < ApplicationController
  def show
    @animals = Animal.where(owner: current_user)
    @bookings = Booking.where(user: current_user)
    @owner = current_user
    @owner_animals = Animal.where(owner_id: @owner.id) if @owner
  end
end
