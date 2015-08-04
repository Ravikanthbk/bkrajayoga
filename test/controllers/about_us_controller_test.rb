require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get founder" do
    get :founder
    assert_response :success
  end

  test "should get leaders" do
    get :leaders
    assert_response :success
  end

  test "should get experiences" do
    get :experiences
    assert_response :success
  end

end
