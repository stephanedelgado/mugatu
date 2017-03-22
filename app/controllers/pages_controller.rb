class PagesController < ApplicationController
  def home
    @artists = Artist.all
    @top_artists = Artist.first(10)
    @artist = Artist.first

  end

end
