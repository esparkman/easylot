class Admin::VehiclesController < Admin::AdminController
  expose(:vehicle, attributes: :vehicle_params)
  expose(:admin_vehicles) { Vehicle.all }

  def create
    if vehicle.save
      redirect_to admin_vehicle_path(vehicle)
    else
      render :new
    end
  end

  def update
    if vehicle.save
      redirect_to admin_vehicles_path
    else
      render :edit
    end
  end

  def destroy
    vehicle.remove_photos
    vehicle.destroy
    redirect_to admin_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :trim, :year, :vin, :price,
                                      :doors, :engine, :transmission, :int_color,
                                      :ext_color, :description, :warranty, :sold,
                                      :warranty_type, :used, :new, :featured,
                                      :interior_type, :mileage)
  end
end
