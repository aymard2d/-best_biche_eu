class Owner::AnimalsController < ApplicationController
  def new
    @animal = Animal.new
    @user = current_user
    @animal = @user.animals.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to animals_path, notice: "Votre réservation a bien été ajoutée"
    else
      render :new, status: :unprocessable_entity
    end
  end
  def booking_params
    params.require(:booking).permit(:user_id, :animal_id, :starting_date, :ending_date)
  end
end
