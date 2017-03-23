class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @artists = Artist.all
    @top_artists = Artist.first(10)
    @artist = Artist.first

  end

  def dashboard
    @user = current_user.id
    all_artists = Artist.all
    @user_artists = []
    all_artists.each { |artist| @user_artists << artist if artist.user_id == current_user.id }
  end


end

