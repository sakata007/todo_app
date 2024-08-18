require "test_helper"

class TripControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trip_index_url
    assert_response :success
  end

  test "should get new" do
    get trip_new_url
    assert_response :success
  end

  test "should get create" do
    get trip_create_url
    assert_response :success
  end

  test "should get edit" do
    get trip_edit_url
    assert_response :success
  end

  test "should get update" do
    get trip_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trip_destroy_url
    assert_response :success
  end
end
