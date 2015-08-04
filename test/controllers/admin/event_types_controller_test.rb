require 'test_helper'

class Admin::EventTypesControllerTest < ActionController::TestCase
  setup do
    @admin_event_type = admin_event_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_event_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_event_type" do
    assert_difference('Admin::EventType.count') do
      post :create, admin_event_type: { name: @admin_event_type.name }
    end

    assert_redirected_to admin_event_type_path(assigns(:admin_event_type))
  end

  test "should show admin_event_type" do
    get :show, id: @admin_event_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_event_type
    assert_response :success
  end

  test "should update admin_event_type" do
    patch :update, id: @admin_event_type, admin_event_type: { name: @admin_event_type.name }
    assert_redirected_to admin_event_type_path(assigns(:admin_event_type))
  end

  test "should destroy admin_event_type" do
    assert_difference('Admin::EventType.count', -1) do
      delete :destroy, id: @admin_event_type
    end

    assert_redirected_to admin_event_types_path
  end
end
