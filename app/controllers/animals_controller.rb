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

  # def reserve
  #  @animal = Animal.find(params[:id])
  #   if @animal.update(reserved: true)
  #     redirect_to @animal, notice: "Animal réservé avec succès."
  #   else
  #     redirect_to @animal, alert: "Erreur lors de la réservation de l'animal."
  #   end
  # end

  # def update
  #   @animal = Animal.find(params[:id])

  #   if @animal.update(animal_params)
  #     redirect_to @animal, notice: 'Animal mis à jour avec succès.'
  #   else
  #     render :edit
  #   end
  # end

  private

  # def animal_params
  #   params.require(:animal).permit(:reserved) # ajoutez d'autres attributs selon vos besoins)
  # end

  def set_animals
    @animal = Animal.find(params[:id])
  end
end
