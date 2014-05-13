require 'test_helper'

class FramingSawsControllerTest < ActionController::TestCase
  setup do
    @framing_saw = framing_saws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:framing_saws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create framing_saw" do
    assert_difference('FramingSaw.count') do
      post :create, framing_saw: { area: @framing_saw.area, batch: @framing_saw.batch, dimension_id: @framing_saw.dimension_id, plant: @framing_saw.plant, product_id: @framing_saw.product_id, quality_id: @framing_saw.quality_id, responsible: @framing_saw.responsible, sheet: @framing_saw.sheet }
    end

    assert_redirected_to framing_saw_path(assigns(:framing_saw))
  end

  test "should show framing_saw" do
    get :show, id: @framing_saw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @framing_saw
    assert_response :success
  end

  test "should update framing_saw" do
    patch :update, id: @framing_saw, framing_saw: { area: @framing_saw.area, batch: @framing_saw.batch, dimension_id: @framing_saw.dimension_id, plant: @framing_saw.plant, product_id: @framing_saw.product_id, quality_id: @framing_saw.quality_id, responsible: @framing_saw.responsible, sheet: @framing_saw.sheet }
    assert_redirected_to framing_saw_path(assigns(:framing_saw))
  end

  test "should destroy framing_saw" do
    assert_difference('FramingSaw.count', -1) do
      delete :destroy, id: @framing_saw
    end

    assert_redirected_to framing_saws_path
  end
end
