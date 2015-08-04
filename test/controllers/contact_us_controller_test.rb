require 'test_helper'

class ContactUsControllerTest < ActionController::TestCase
  test "should get local" do
    get :local
    assert_response :success
  end

  test "should get head_quaters" do
    get :head_quaters
    assert_response :success
  end

  test "should get internation" do
    get :internation
    assert_response :success
  end

end
