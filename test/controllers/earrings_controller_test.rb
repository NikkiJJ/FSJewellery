require "test_helper"

class EarringsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get earrings_index_url
    assert_response :success
  end

  test "should get show" do
    get earrings_show_url
    assert_response :success
  end

  test "should get new" do
    get earrings_new_url
    assert_response :success
  end

  test "should get create" do
    get earrings_create_url
    assert_response :success
  end

  test "should get edit" do
    get earrings_edit_url
    assert_response :success
  end

  test "should get update" do
    get earrings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get earrings_destroy_url
    assert_response :success
  end
end
