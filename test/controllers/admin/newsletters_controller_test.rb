require 'test_helper'

class Admin::NewslettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_newsletter = admin_newsletters(:one)
  end

  test "should get index" do
    get admin_newsletters_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_newsletter_url
    assert_response :success
  end

  test "should create admin_newsletter" do
    assert_difference('Admin::Newsletter.count') do
      post admin_newsletters_url, params: { admin_newsletter: { priority: @admin_newsletter.priority, title: @admin_newsletter.title } }
    end

    assert_redirected_to admin_newsletter_url(Admin::Newsletter.last)
  end

  test "should show admin_newsletter" do
    get admin_newsletter_url(@admin_newsletter)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_newsletter_url(@admin_newsletter)
    assert_response :success
  end

  test "should update admin_newsletter" do
    patch admin_newsletter_url(@admin_newsletter), params: { admin_newsletter: { priority: @admin_newsletter.priority, title: @admin_newsletter.title } }
    assert_redirected_to admin_newsletter_url(@admin_newsletter)
  end

  test "should destroy admin_newsletter" do
    assert_difference('Admin::Newsletter.count', -1) do
      delete admin_newsletter_url(@admin_newsletter)
    end

    assert_redirected_to admin_newsletters_url
  end
end
