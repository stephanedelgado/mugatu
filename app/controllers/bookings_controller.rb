class BookingsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @booking = @artist.bookings.new(booking_params)
    @booking.status = "pending"
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path
    else
      render 'artists/show'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  private

  def booking_params
    booking_params = params.require(:booking).permit(:address,
                                                    :start_time,
                                                    :end_time,
                                                    :status)
  end

end
