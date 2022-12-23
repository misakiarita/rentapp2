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

  def destroy
    @rental_building = RentalBuilding.find(params[:id])
    if @rental_building.destroy
    redirect_to rental_buildings_path, notice:"削除されました"
    end
  end

  def edit
    @rental_building = RentalBuilding.find(params[:id])
    # @rental_building.closest_stations.build
  end

  def update
    @rental_building = RentalBuilding.find(params[:id])
    if @rental_building.update(rental_params)
      redirect_to rental_buildings_path, notice:"編集しました"
    else
      render :edit
    end
  end

  private

  def rental_params
    params.require(:rental_building).permit(:name, :price, :age, :address, :comment, closest_stations_attributes: [:id, :line, :station_name, :walk_by])
  end

end
