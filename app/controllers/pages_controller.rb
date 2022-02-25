class PagesController < ApplicationController
  def home
    @users = User.joins(:artworks).group("users.id").having("count(artworks.id)>0").last(2)
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @artworks = @user.artworks

  end
end
