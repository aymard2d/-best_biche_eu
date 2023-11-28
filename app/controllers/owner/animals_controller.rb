class Owner::AnimalsController < ApplicationController
  def new
    @owner = Owner.new
    @animal = Animal.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Votre annonce a bien été publié"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
