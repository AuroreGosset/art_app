class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
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

  def artwork_params
    params.require(:artwork).permit(:username, :title, :price_per_day, :description, :photo)
  end
end
