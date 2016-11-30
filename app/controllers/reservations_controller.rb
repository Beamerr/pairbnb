 class ReservationsController < ApplicationController 

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

  end

  def preload
    @listing = Listing.find(params[:id])
    today = Date.today
    reservations = @listing.reservations.where(check_in: today, check_out: today)

    render json: reservations
  end
  
  private
   
    def reservation_params
     
      params.require(:reservation).permit(:check_in, :check_out, :total_cost, :listing_id)
    end 

end