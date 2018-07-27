class VehiclesController < ApplicationController
  expose(:vehicle) { Vehicle.find(params[:id]) }
  expose(:vehicle_photos) { vehicle.photos.each { |photo| photo.large.url } }
  expose(:vehicles) { Vehicle.search(vehicle_query, fields: [:make, :model, :year], match: :word_start) }
  expose(:vehicle_query) { params[:query].presence || '*' }

  def create
    if vehicle.save
      redirect_to vehicle
    else
      render :new
    end
  end

  def search
    if params[:query].present?
      vehicles
    else
      Vehicle.all
    end
  end

  def autocomplete
   render json: Vehicle.search(params[:term], {
                               fields: ["make", "model", "year"],
                               limit: 10}).map(&:make).uniq
  end

end
