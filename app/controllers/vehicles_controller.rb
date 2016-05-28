class VehiclesController < ApplicationController
  expose(:vehicle, attributes: :vehicle_params)

  private

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :trim, :year, :vin, :price,
                                    :doors, :engine, :transmission, :int_color,
                                    :ext_color, :description, :warranty, :sold,
                                    :warranty_type, :used, :new, :featured,
                                    :interior_type)
  end
end
