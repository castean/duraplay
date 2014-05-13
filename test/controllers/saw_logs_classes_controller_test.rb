require 'test_helper'

class SawLogsClassesControllerTest < ActionController::TestCase
  setup do
    @saw_logs_class = saw_logs_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saw_logs_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saw_logs_class" do
    assert_difference('SawLogsClass.count') do
      post :create, saw_logs_class: { saw_log_class: @saw_logs_class.saw_log_class }
    end

    assert_redirected_to saw_logs_class_path(assigns(:saw_logs_class))
  end

  test "should show saw_logs_class" do
    get :show, id: @saw_logs_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saw_logs_class
    assert_response :success
  end

  test "should update saw_logs_class" do
    patch :update, id: @saw_logs_class, saw_logs_class: { saw_log_class: @saw_logs_class.saw_log_class }
    assert_redirected_to saw_logs_class_path(assigns(:saw_logs_class))
  end

  test "should destroy saw_logs_class" do
    assert_difference('SawLogsClass.count', -1) do
      delete :destroy, id: @saw_logs_class
    end

    assert_redirected_to saw_logs_classes_path
  end
end
