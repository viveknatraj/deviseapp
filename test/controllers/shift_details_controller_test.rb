require 'test_helper'

class ShiftDetailsControllerTest < ActionController::TestCase
  setup do
    @shift_detail = shift_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shift_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift_detail" do
    assert_difference('ShiftDetail.count') do
      post :create, shift_detail: { description: @shift_detail.description, end_time: @shift_detail.end_time, shift_name: @shift_detail.shift_name, start_time: @shift_detail.start_time, user_id: @shift_detail.user_id }
    end

    assert_redirected_to shift_detail_path(assigns(:shift_detail))
  end

  test "should show shift_detail" do
    get :show, id: @shift_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift_detail
    assert_response :success
  end

  test "should update shift_detail" do
    patch :update, id: @shift_detail, shift_detail: { description: @shift_detail.description, end_time: @shift_detail.end_time, shift_name: @shift_detail.shift_name, start_time: @shift_detail.start_time, user_id: @shift_detail.user_id }
    assert_redirected_to shift_detail_path(assigns(:shift_detail))
  end

  test "should destroy shift_detail" do
    assert_difference('ShiftDetail.count', -1) do
      delete :destroy, id: @shift_detail
    end

    assert_redirected_to shift_details_path
  end
end
