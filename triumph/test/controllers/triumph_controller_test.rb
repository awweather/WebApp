require 'test_helper'

class TriumphControllerTest < ActionController::TestCase
  test "should get bios" do
    get :bios
    assert_response :success
  end

  test "should get clips" do
    get :clips
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get social" do
    get :social
    assert_response :success
  end

end
