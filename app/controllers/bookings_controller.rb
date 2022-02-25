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
    @booking.total_price = booking_price(@booking)

    if @booking.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking.status = "Approuvé"
   if @booking.save
     flash[:success] = "Vous avez accepté cette réservation !"
   end
   redirect_to dashboard_path
  end

  def rejected
    @booking = Booking.find(params[:id])
    @booking.status = "Refusé"
    if @booking.save
      flash[:success] = "Vous avez refusé cette réservation."
    end
    redirect_to dashboard_path
  end

  def cancelled
    @booking = Booking.find(params[:id])
    @booking.status = "Annulé"
    if @booking.save
      flash[:success] = "Vous avez annulé cette réservation."
    end
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def booking_price(booking)
    ((booking.end_date.to_date - booking.start_date.to_date).to_i) * booking.artwork.price_per_day
  end
end
