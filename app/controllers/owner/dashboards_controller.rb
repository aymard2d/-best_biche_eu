class Owner::DashboardsController < ApplicationController
  def show
    @animals = Animal.all
    @owner = current_user
    @owner_animals = Animal.where(owner_id: @owner.id) if @owner
  end
end
