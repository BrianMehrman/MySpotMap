require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get 404" do
    get :404
    assert_response :success
  end

end
