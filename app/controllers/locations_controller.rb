class LocationsController < ApplicationController

  def index
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

  private

  def location_params
    params.require(:location).permit(:address)
  end
end
