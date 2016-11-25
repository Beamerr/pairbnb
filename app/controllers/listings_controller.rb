class ListingsController < ApplicationController
  def index
    @listings = Listing.paginate(:page => params[:page], :per_page => 30)
  end

  def listing_params
    params.require(:listing).permit(:description, :city, :address, :max_occupants, :rooms, :rent, {avatars:[]})
  end

  def new
    @listing = Listing.new
    
  end

  def create
    @listing = Listing.new(listing_params) 
    #byebug
    @listing.user_id = current_user.id
     if @listing.save
        flash[:success] = "Your house is added out to rent!!"
        redirect_to listings_path
     else
        render :new
     end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
