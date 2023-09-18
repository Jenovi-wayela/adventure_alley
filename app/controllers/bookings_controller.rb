class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking was succesfully created."
    else
      render :new, alert: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status)
  end

end
