require 'test_helper'

class Admin::VehiclesControllerTest < ActionController::TestCase
  setup do
    sign_in Fabricate :user
  end

  test "should create vehicle with image" do
    image = 'files/image-1.jpg'
    file = fixture_file_upload(image, 'application/image')
    assert_difference('Vehicle.count') do
      post :create, vehicle: {:file_url => file}
    end
  end
end
