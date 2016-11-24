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
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
