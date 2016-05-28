class AddPhotosToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :photos, :string, array: true, default: []
  end
end
