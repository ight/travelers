class LocationsController < ApplicationController

  def index
    #TODO
    # location_by_user = Location.where(user_id: current_user.id)
    # public_location = Location.where(status: 1)
    # @locations = (location_by_user + public_location).uniq
  end

  def new
  	@location = Location.new
  end

  def create
  	@location = Location.new(location_params)
  	@location.user_id = current_user.id
    if @location.save
      flash[:success] = "Place added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def share_location
    #TODO
    # @location = Location.find(params[:id])
    # @location.update(shared_user_ids: params[:user_ids])
  end

  private

  def location_params
    params.require(:location).permit(:address)
  end
end
