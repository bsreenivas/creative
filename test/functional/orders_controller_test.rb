require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get select" do
    get :select
    assert_response :success
  end

  test "should get show1" do
    get :show1
    assert_response :success
  end

end
