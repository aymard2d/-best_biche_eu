class Owner::AnimalsController < ApplicationController

  def new
    @animal = Animal.new
    @user = current_user
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.owner = current_user
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :escort_name, :age, :address, :specie, :gender, :skill, :price, :ranking, :description, photos: [])
  end

end
