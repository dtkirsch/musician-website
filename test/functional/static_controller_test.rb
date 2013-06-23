require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get resume" do
    get :resume
    assert_response :success
  end

  test "should get lessons" do
    get :lessons
    assert_response :success
  end

  test "should get classes" do
    get :classes
    assert_response :success
  end

  test "should get weddings" do
    get :weddings
    assert_response :success
  end

  test "should get testimonials" do
    get :testimonials
    assert_response :success
  end

  test "should get resume" do
    get :resume
    assert_response :success
  end

end
