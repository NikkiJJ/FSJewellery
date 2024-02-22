require "test_helper"

class BraceletsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bracelets_index_url
    assert_response :success
  end

  test "should get show" do
    get bracelets_show_url
    assert_response :success
  end

  test "should get new" do
    get bracelets_new_url
    assert_response :success
  end

  test "should get create" do
    get bracelets_create_url
    assert_response :success
  end

  test "should get edit" do
    get bracelets_edit_url
    assert_response :success
  end

  test "should get update" do
    get bracelets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bracelets_destroy_url
    assert_response :success
  end
end
