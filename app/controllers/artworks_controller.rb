class ArtworksController < ApplicationController
  def index
    if params[:search]
      @artworks = Artwork.all
      @artworks = Artwork.search_by_title_and_description(search_params[:query]) unless search_params[:query].empty?
      @artworks.includes(:bookings).where('bookings.start_date < ? AND bookings.end_date > ?',
                                           search_params[:end_date],
                                           search_params[:start_date])

    else
      @artworks = Artwork.all
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to dashboard_path(@user)
    else
      render :new
    end
  end

  private

  def search_params
    params.require(:search).permit(:query, :start_date, :end_date)
    end

  def artwork_params
    params.require(:artwork).permit(:username, :title, :price_per_day, :description, :photo, :category)
  end
end
