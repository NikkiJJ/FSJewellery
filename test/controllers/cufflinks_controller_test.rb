require "test_helper"

class CufflinksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cufflinks_index_url
    assert_response :success
  end

  test "should get show" do
    get cufflinks_show_url
    assert_response :success
  end

  test "should get new" do
    get cufflinks_new_url
    assert_response :success
  end

  test "should get create" do
    get cufflinks_create_url
    assert_response :success
  end

  test "should get edit" do
    get cufflinks_edit_url
    assert_response :success
  end

  test "should get update" do
    get cufflinks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cufflinks_destroy_url
    assert_response :success
  end
end
