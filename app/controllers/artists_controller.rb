class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user_id = current_user.id
    if @artist.save
      render :new
    else
      render :new
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
                                    :user_id,
                                    :photos)
  end

end
