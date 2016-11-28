 class ReservationsController < ApplicationController 

  def new
    @listing = Listing.find(params[:listing_id])
    today = Date.today
    reservations = listing.reservations.where("start_date >= ? || end date >= ?", today, today)

    render json: reservations
  end

  def create
    @reservation = current_user.reservation.create(reservation_params)
  end

  
  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out, :rent, :total_cost, :listing_id)
  end 
end