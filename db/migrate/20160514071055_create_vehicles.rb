class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :trim
      t.string :year
      t.string :vin
      t.string :doors
      t.string :color
      t.string :int_color
      t.string :ext_color
      t.text :description
      t.boolean :sold
      t.boolean :used
      t.boolean :featured
      t.boolean :new
      t.boolean :warranty
      t.string :warranty_type
      t.string :price

      t.timestamps null: false
    end
  end
end
