class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      # redirect_to artist_path(@artist)
      redirect_to root
    else
      render(:new)
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:first_name,
                                    :last_name,
                                    :age,
                                    :gender,
                                    :phone_number,
                                    :address,
                                    :height,
                                    :shoe_size,
                                    :daily_rate,
                                    :user_id)
  end

end
