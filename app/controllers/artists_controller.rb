class ArtistsController < ApplicationController
  def show
    find_artist
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

end
