require 'test_helper'

class QualityClassesControllerTest < ActionController::TestCase
  setup do
    @quality_class = quality_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quality_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quality_class" do
    assert_difference('QualityClass.count') do
      post :create, quality_class: { name: @quality_class.name }
    end

    assert_redirected_to quality_class_path(assigns(:quality_class))
  end

  test "should show quality_class" do
    get :show, id: @quality_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quality_class
    assert_response :success
  end

  test "should update quality_class" do
    patch :update, id: @quality_class, quality_class: { name: @quality_class.name }
    assert_redirected_to quality_class_path(assigns(:quality_class))
  end

  test "should destroy quality_class" do
    assert_difference('QualityClass.count', -1) do
      delete :destroy, id: @quality_class
    end

    assert_redirected_to quality_classes_path
  end
end
