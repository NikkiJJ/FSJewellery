require "test_helper"

class RingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rings_index_url
    assert_response :success
  end

  test "should get show" do
    get rings_show_url
    assert_response :success
  end

  test "should get new" do
    get rings_new_url
    assert_response :success
  end

  test "should get create" do
    get rings_create_url
    assert_response :success
  end

  test "should get edit" do
    get rings_edit_url
    assert_response :success
  end

  test "should get update" do
    get rings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rings_destroy_url
    assert_response :success
  end
end
