require 'test_helper'

class Admin::VenuesControllerTest < ActionController::TestCase
  setup do
    @admin_venue = admin_venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_venue" do
    assert_difference('Admin::Venue.count') do
      post :create, admin_venue: { address: @admin_venue.address, city_locality: @admin_venue.city_locality, country: @admin_venue.country, email: @admin_venue.email, fax: @admin_venue.fax, name: @admin_venue.name, phone: @admin_venue.phone, postcode: @admin_venue.postcode, remarks: @admin_venue.remarks }
    end

    assert_redirected_to admin_venue_path(assigns(:admin_venue))
  end

  test "should show admin_venue" do
    get :show, id: @admin_venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_venue
    assert_response :success
  end

  test "should update admin_venue" do
    patch :update, id: @admin_venue, admin_venue: { address: @admin_venue.address, city_locality: @admin_venue.city_locality, country: @admin_venue.country, email: @admin_venue.email, fax: @admin_venue.fax, name: @admin_venue.name, phone: @admin_venue.phone, postcode: @admin_venue.postcode, remarks: @admin_venue.remarks }
    assert_redirected_to admin_venue_path(assigns(:admin_venue))
  end

  test "should destroy admin_venue" do
    assert_difference('Admin::Venue.count', -1) do
      delete :destroy, id: @admin_venue
    end

    assert_redirected_to admin_venues_path
  end
end
