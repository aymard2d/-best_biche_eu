class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Votre annonce a bien été publié"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
