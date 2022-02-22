class BookingsController < ApplicationController


  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @artwork = Artwork.find(params[:artwork_id])
    @booking.artwork = @artwork
    @booking.user = current_user

    if @booking.save!
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
