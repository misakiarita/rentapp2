class RentalBuildingsController < ApplicationController
  def new
    @rental_building = RentalBuilding.new
    @rental_building.closest_stations.build
  end

  def create
    @rental_building = RentalBuilding.new(rental_params)
      if @rental_building.save
        redirect_to rental_building_path(@rental_building.id)
      else
        render :new
      end
  end

  def show
    @rental_building = RentalBuilding.find(params[:id])
    @closest_stations = @rental_building.closest_stations
  end

 def index
    @rental_building = RentalBuilding.all
 end

  private

  def rental_params
    params.require(:rental_building).permit(:name, :price, :age, :address, :comment, closest_stations_attributes: [:id, :line, :station_name, :walk_by])
  end

end
