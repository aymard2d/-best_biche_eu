class AnimalsController < ApplicationController
  before_action :set_animals, only: [:show]
  def index
    @animals = Animal.all
    if params[:query].present?
      sql_subquery = <<~SQL
      animals.name @@ :query
      OR animals.description @@ :query
      OR animals.skill @@ :query
      OR animals.specie @@ :query
      OR animals.escort_name @@ :query
      SQL
      @animals = @animals.where(sql_subquery, query: params[:query])
    end
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
