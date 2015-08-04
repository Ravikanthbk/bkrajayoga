require 'test_helper'

class Admin::ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post :create, experience: { content: @experience.content, published: @experience.published, published_at: @experience.published_at, title: @experience.title }
    end

    assert_redirected_to admin_experience_path(assigns(:experience))
  end

  test "should show experience" do
    get :show, id: @experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience
    assert_response :success
  end

  test "should update experience" do
    patch :update, id: @experience, experience: { content: @experience.content, published: @experience.published, published_at: @experience.published_at, title: @experience.title }
    assert_redirected_to admin_experience_path(assigns(:experience))
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete :destroy, id: @experience
    end

    assert_redirected_to admin_experiences_path
  end
end
