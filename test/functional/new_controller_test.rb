require 'test_helper'

class NewControllerTest < ActionController::TestCase
  test "should get cousine" do
    get :cousine
    assert_response :success
  end

end
