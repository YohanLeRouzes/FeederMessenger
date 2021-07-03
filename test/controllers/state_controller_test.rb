require 'test_helper'

class StateControllerTest < ActionController::TestCase
  test "should get state" do
    get :state
    assert_response :success
  end

end
