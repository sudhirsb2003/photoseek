require 'test_helper'

class CameraTypesControllerTest < ActionController::TestCase
  setup do
    @camera_type = camera_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camera_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camera_type" do
    assert_difference('CameraType.count') do
      post :create, camera_type: { name: @camera_type.name }
    end

    assert_redirected_to camera_type_path(assigns(:camera_type))
  end

  test "should show camera_type" do
    get :show, id: @camera_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camera_type
    assert_response :success
  end

  test "should update camera_type" do
    patch :update, id: @camera_type, camera_type: { name: @camera_type.name }
    assert_redirected_to camera_type_path(assigns(:camera_type))
  end

  test "should destroy camera_type" do
    assert_difference('CameraType.count', -1) do
      delete :destroy, id: @camera_type
    end

    assert_redirected_to camera_types_path
  end
end
