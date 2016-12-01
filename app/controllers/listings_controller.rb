class ListingsController < ApplicationController
  
  def index
    @listings = Listing.paginate(:page => params[:page], :per_page => 30)
  
    @listings = @listings.city(params[:city]) if params[:city].present? 
    
    @listings = @listings.rent(params[:minrent], params[:maxrent]) if params[:minrent].present?

    @listings = @listings.rooms(params[:rooms]) if params[:rooms].present?

    @listings = @listings.max_occupants(params[:max_occupants]) if params[:max_occupants].present?
    
    @listings = @listings.search_by_description(params[:description]) if params[:description].present? 

    path = request.path.to_s
    if path.include? "users"
      @user = current_user
      @listings = @user.listings.all.paginate(:page => params[:page], :per_page => 30)
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params) 
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
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.user_id = current_user.id
      if @listing.update(listing_params)
         redirect_to @listing
      else
         render 'edit'
      end
  end

  def destroy
  end

 private

  def listing_params
    params.require(:listing).permit(:description, :city, :address, :max_occupants, :rooms, :rent, {avatars:[]})
  end

 
end
