require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  setup do
    @vehicle = Fabricate :vehicle
    @vehicle_photos = Fabricate :vehicle_with_photos
  end

  test "vehicle is valid" do
    assert @vehicle.valid?
  end

  test "vehicle has photos" do
    assert_equal @vehicle_photos.photos.count, 2
  end
end
