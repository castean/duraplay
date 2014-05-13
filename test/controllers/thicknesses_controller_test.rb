require 'test_helper'

class ThicknessesControllerTest < ActionController::TestCase
  setup do
    @thickness = thicknesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thicknesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thickness" do
    assert_difference('Thickness.count') do
      post :create, thickness: { inches: @thickness.inches, milimiter: @thickness.milimiter, name: @thickness.name }
    end

    assert_redirected_to thickness_path(assigns(:thickness))
  end

  test "should show thickness" do
    get :show, id: @thickness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thickness
    assert_response :success
  end

  test "should update thickness" do
    patch :update, id: @thickness, thickness: { inches: @thickness.inches, milimiter: @thickness.milimiter, name: @thickness.name }
    assert_redirected_to thickness_path(assigns(:thickness))
  end

  test "should destroy thickness" do
    assert_difference('Thickness.count', -1) do
      delete :destroy, id: @thickness
    end

    assert_redirected_to thicknesses_path
  end
end
