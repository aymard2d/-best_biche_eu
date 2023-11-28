class AnimalsController < ApplicationController
  before_action :set_animals, only: [:show]
  def index
    @animals = Animal.all
  end

  def show
  end

  private

  def set_animals
    @animal = Animal.find(params[:id])
  end
end
