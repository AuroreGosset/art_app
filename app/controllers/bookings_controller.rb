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
    @booking.status = "En attente"

    if @booking.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def accepted
    @booking = Booking.find(params[:artwork_id])
    @booking.status = "approved"
   if @booking.save
     flash[:success] = "Vous avez accepté cette réservation !"
   end
   redirect_to dashboard_path
  end

  def rejected
    @booking = Booking.find(params[:artwork_id])
    @booking.status = "rejected"
    if @booking.save
      flash[:error] = "Vous avez refusé cette réservation."
    end
    redirect_to dashboard_path
  end

  def cancelled
    @booking = Booking.find(params[:artwork_id])

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
