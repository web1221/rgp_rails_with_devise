class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :index
  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
    render :edit
  end

  def show
    @location = Location.find(params[:id])
    render :show
  end

  def update
    @location= Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end
  private
  def location_params
    params.require(:location).permit(:name)
  end

end
