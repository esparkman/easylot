require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    sign_in Fabricate(:user)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
