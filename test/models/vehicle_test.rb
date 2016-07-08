require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  setup do
    @vehicle = Fabricate :vehicle
  end

  test "vehicle is valid" do
    assert @vehicle.valid?
  end
end
