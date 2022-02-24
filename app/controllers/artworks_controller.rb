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

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to dashboard_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:username, :title, :price_per_day, :description, :photo)
  end
end
