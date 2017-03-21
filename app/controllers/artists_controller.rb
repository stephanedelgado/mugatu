class ArtistsController < ApplicationController

  def show
    find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user_id = current_user.id
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end

  end

  def edit
    @artist = Artist.find(params[:id])
  end


  def destroy
    @artist = find_artist
    @artist.destroy
    redirect_to root_path
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  private


  def find_artist
    @artist = Artist.find(params[:id])
  end

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
