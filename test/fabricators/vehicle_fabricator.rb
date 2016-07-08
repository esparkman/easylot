Fabricator :vehicle do
  make "Dodge"
  model "RAM 1500"
  trim "SLT"
  year "2014"
  vin "1C6RR7LGXES110751"
  doors "4"
  engine "5.7l Hemi"
  transmission "6speed Automatic"
  int_color "Gray"
  ext_color "Black"
  description "2014 RAM 1500 SLT"
  warranty false
  warranty_type "No Warranty"
  sold false
  used true
  featured true
  new false
  price "24995"
  mileage "30000"
  interior_type "Cloth"
end

Fabricator :vehicle_with_photos, from: :vehicle do
  photos ["image-1.jpeg", "image-2.jpeg"]
end

Fabricator :non_featured_vehicle, from: :vehicle do
  featured false
end
