require 'test_helper'

class CousinesControllerTest < ActionController::TestCase
  test "should get submit" do
    get :submit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
