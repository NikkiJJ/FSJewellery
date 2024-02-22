require "test_helper"

class BroochesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brooches_index_url
    assert_response :success
  end

  test "should get show" do
    get brooches_show_url
    assert_response :success
  end

  test "should get new" do
    get brooches_new_url
    assert_response :success
  end

  test "should get create" do
    get brooches_create_url
    assert_response :success
  end

  test "should get edit" do
    get brooches_edit_url
    assert_response :success
  end

  test "should get update" do
    get brooches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get brooches_destroy_url
    assert_response :success
  end
end
