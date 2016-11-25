class ListingsController < ApplicationController
  def index
    @listings = Listing.paginate(:page => params[:page], :per_page => 30)
  end

  def listing_params
    params.require(:listing).permit(:name, :price, :location, {avatars:[]})
  end

  def new
  end

  def create
    @house = current_user.houses.build(params[:house]) 
     if @house.save
        flash[:success] = "Your house is added out to rent!!"
        redirect_to listings_path
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
