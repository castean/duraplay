require 'test_helper'

class SawLogsReceiptsControllerTest < ActionController::TestCase
  setup do
    @saw_logs_receipt = saw_logs_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saw_logs_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saw_logs_receipt" do
    assert_difference('SawLogsReceipt.count') do
      post :create, saw_logs_receipt: { high_diameter: @saw_logs_receipt.high_diameter, length: @saw_logs_receipt.length, low_diameter: @saw_logs_receipt.low_diameter, saw_log_class_id: @saw_logs_receipt.saw_log_class_id, ticket_id: @saw_logs_receipt.ticket_id }
    end

    assert_redirected_to saw_logs_receipt_path(assigns(:saw_logs_receipt))
  end

  test "should show saw_logs_receipt" do
    get :show, id: @saw_logs_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saw_logs_receipt
    assert_response :success
  end

  test "should update saw_logs_receipt" do
    patch :update, id: @saw_logs_receipt, saw_logs_receipt: { high_diameter: @saw_logs_receipt.high_diameter, length: @saw_logs_receipt.length, low_diameter: @saw_logs_receipt.low_diameter, saw_log_class_id: @saw_logs_receipt.saw_log_class_id, ticket_id: @saw_logs_receipt.ticket_id }
    assert_redirected_to saw_logs_receipt_path(assigns(:saw_logs_receipt))
  end

  test "should destroy saw_logs_receipt" do
    assert_difference('SawLogsReceipt.count', -1) do
      delete :destroy, id: @saw_logs_receipt
    end

    assert_redirected_to saw_logs_receipts_path
  end
end
