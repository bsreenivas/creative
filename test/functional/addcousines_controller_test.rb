require 'test_helper'

class AddcousinesControllerTest < ActionController::TestCase
  setup do
    @addcousine = addcousines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addcousines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addcousine" do
    assert_difference('Addcousine.count') do
      post :create, addcousine: { availabletime: @addcousine.availabletime, cost: @addcousine.cost, cousinename: @addcousine.cousinename, item: @addcousine.item, location: @addcousine.location }
    end

    assert_redirected_to addcousine_path(assigns(:addcousine))
  end

  test "should show addcousine" do
    get :show, id: @addcousine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addcousine
    assert_response :success
  end

  test "should update addcousine" do
    put :update, id: @addcousine, addcousine: { availabletime: @addcousine.availabletime, cost: @addcousine.cost, cousinename: @addcousine.cousinename, item: @addcousine.item, location: @addcousine.location }
    assert_redirected_to addcousine_path(assigns(:addcousine))
  end

  test "should destroy addcousine" do
    assert_difference('Addcousine.count', -1) do
      delete :destroy, id: @addcousine
    end

    assert_redirected_to addcousines_path
  end
end
