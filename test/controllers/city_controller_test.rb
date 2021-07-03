require 'test_helper'

class CityControllerTest < ActionController::TestCase
  test "should get city" do
    get :city
    assert_response :success
  end

end
