class BookingsController < ApplicationController
  def create
    @animal = Animal.find(params[:booking][:animal_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = @animal
    raise
    if @booking.save
      redirect_to @booking, notice: "Votre annonce a bien été publié"
    else
      render "animals/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
