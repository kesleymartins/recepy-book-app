require "test_helper"

class RecepiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recepies_index_url
    assert_response :success
  end

  test "should get show" do
    get recepies_show_url
    assert_response :success
  end

  test "should get new" do
    get recepies_new_url
    assert_response :success
  end

  test "should get create" do
    get recepies_create_url
    assert_response :success
  end

  test "should get edit" do
    get recepies_edit_url
    assert_response :success
  end

  test "should get update" do
    get recepies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recepies_destroy_url
    assert_response :success
  end
end
