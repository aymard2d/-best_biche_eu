class Owner::DashboardsController < ApplicationController
  def show
    @animals = Animal.all
  end
end
