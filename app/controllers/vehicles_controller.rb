class VehiclesController < ApplicationController
  expose(:vehicle, attributes: :vehicle_params)
  expose(:vehicles)

  # before_action :authenticate_user!, except: [:index, :show]

  def create
    if vehicle.save
      redirect_to vehicle
    else
      render :new
    end
  end

  def dashboard
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
