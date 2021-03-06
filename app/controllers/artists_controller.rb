class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @artists = Artist.where.not(latitude: nil, longitude: nil)
    @search = params[:search]
      if params[:search]
        @artists = @artists.near(params[:search], 100).order("created_at DESC")
      else
        @artists = @artists.order('created_at DESC')
      end

      @hash = Gmaps4rails.build_markers(@artists) do |artist, marker|
        marker.lat artist.latitude
        marker.lng artist.longitude
      end
  end

  def show
    # find_artist
    @artist = Artist.find(params[:id])
    # @artist_coordinates = { lat: @artist.latitude, lng: @artist.longitude }
    # @artist_map = Artist.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@artist) do |artist, marker|
      marker.lat artist.latitude
      marker.lng artist.longitude
    end

    find_artist
    @booking = Booking.new
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

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    @artist.save
    redirect_to dashboard_path
  end

  def destroy
    @artist = find_artist
    @artist.destroy
    redirect_to dashboard_path
  end

  def image_paths
    @artist = find_artist
    @artist.photos.each do |photo|
      photo.path
    end
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
                                    :city,
                                    :height,
                                    :shoe_size,
                                    :daily_rate,
                                    :user_id,
                                    photos: [])

  end

end
