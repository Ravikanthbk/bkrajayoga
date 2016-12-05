require 'test_helper'

class Admin::MiniCarouselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_mini_carousel = admin_mini_carousels(:one)
  end

  test "should get index" do
    get admin_mini_carousels_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_mini_carousel_url
    assert_response :success
  end

  test "should create admin_mini_carousel" do
    assert_difference('Admin::MiniCarousel.count') do
      post admin_mini_carousels_url, params: { admin_mini_carousel: { description: @admin_mini_carousel.description, is_url: @admin_mini_carousel.is_url, title: @admin_mini_carousel.title, url: @admin_mini_carousel.url } }
    end

    assert_redirected_to admin_mini_carousel_url(Admin::MiniCarousel.last)
  end

  test "should show admin_mini_carousel" do
    get admin_mini_carousel_url(@admin_mini_carousel)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_mini_carousel_url(@admin_mini_carousel)
    assert_response :success
  end

  test "should update admin_mini_carousel" do
    patch admin_mini_carousel_url(@admin_mini_carousel), params: { admin_mini_carousel: { description: @admin_mini_carousel.description, is_url: @admin_mini_carousel.is_url, title: @admin_mini_carousel.title, url: @admin_mini_carousel.url } }
    assert_redirected_to admin_mini_carousel_url(@admin_mini_carousel)
  end

  test "should destroy admin_mini_carousel" do
    assert_difference('Admin::MiniCarousel.count', -1) do
      delete admin_mini_carousel_url(@admin_mini_carousel)
    end

    assert_redirected_to admin_mini_carousels_url
  end
end
