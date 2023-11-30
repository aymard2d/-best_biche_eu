class BookingsController < ApplicationController
  def create
    @animal = Animal.find(params[:booking][:animal_id])
    @booking = Booking.new
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = @animal
    if @booking.save
      redirect_to animal_path(@animal), notice: "Votre réservation a bien été publiée"
    else
      render "animals/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :animal_id)
  end
end
