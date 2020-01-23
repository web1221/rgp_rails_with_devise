class CharactersController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @character = @location.characters.new
    render :new
  end
  def create
  @location = Location.find(params[:location_id])
  @character = @location.characters.new(character_params)
  if @character.save
    redirect_to location_path(@location)
  else
    render :new
  end
end
def show
  @location = Location.find(params[:location_id])
  @character = Character.find(params[:id])
  render :show
end
def edit
  @location = Location.find(params[:location_id])
  @character = Character.find(params[:id])
  render :edit
end
def update
  @character = Character.find(params[:id])
  if @character.update(character_params)
    redirect_to location_path(@character.location)
  else
    render :edit
  end
end
def destroy
  @character = Character.find(params[:id])
  @character.destroy
  redirect_to location_path(@character.location)
end

# Other controller actions go here.

private
  def character_params
    params.require(:character).permit(:name, :lyrics)
  end
end
