require 'test_helper'

class CountryControllerTest < ActionController::TestCase
  test "should get country" do
    get :country
    assert_response :success
  end

end
