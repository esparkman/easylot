class VehiclesController < ApplicationController
  expose(:vehicle, attributes: :vehicle_params)
  expose(:vehicles) { Vehicle.search(vehicle_query, fields: [:make, :model, :year], match: :word_start, suggest: true) }
  expose(:vehicle_query) { params[:query].presence || '*' }

  # before_action :authenticate_user!, except: [:index, :show]

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

  private

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :trim, :year, :vin, :price,
                                      :doors, :engine, :transmission, :int_color,
                                      :ext_color, :description, :warranty, :sold,
                                      :warranty_type, :used, :new, :featured,
                                      :interior_type, { photos: [] })
  end
end
