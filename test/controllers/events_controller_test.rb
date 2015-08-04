require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get courses" do
    get :courses
    assert_response :success
  end

  test "should get local_activities" do
    get :local_activities
    assert_response :success
  end

  test "should get lectures" do
    get :lectures
    assert_response :success
  end

end
