require 'test_helper'

class FordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ford = fords(:one)
  end

  test "should get index" do
    get fords_url
    assert_response :success
  end

  test "should get new" do
    get new_ford_url
    assert_response :success
  end

  test "should create ford" do
    assert_difference('Ford.count') do
      post fords_url, params: { ford: { make: @ford.make, model: @ford.model, year: @ford.year } }
    end

    assert_redirected_to ford_url(Ford.last)
  end

  test "should show ford" do
    get ford_url(@ford)
    assert_response :success
  end

  test "should get edit" do
    get edit_ford_url(@ford)
    assert_response :success
  end

  test "should update ford" do
    patch ford_url(@ford), params: { ford: { make: @ford.make, model: @ford.model, year: @ford.year } }
    assert_redirected_to ford_url(@ford)
  end

  test "should destroy ford" do
    assert_difference('Ford.count', -1) do
      delete ford_url(@ford)
    end

    assert_redirected_to fords_url
  end
end
