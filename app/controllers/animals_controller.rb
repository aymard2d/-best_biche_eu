class AnimalsController < ApplicationController
  before_action :set_animals, only: [:show]
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_animals
    @animal = Animal.find(params[:id])
  end
end
