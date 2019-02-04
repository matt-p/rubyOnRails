require 'test_helper'

class NovellsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get novells_index_url
    assert_response :success
  end

  test "should get show" do
    get novells_show_url
    assert_response :success
  end

  test "should get new" do
    get novells_new_url
    assert_response :success
  end

  test "should get create" do
    get novells_create_url
    assert_response :success
  end

  test "should get update" do
    get novells_update_url
    assert_response :success
  end

  test "should get edit" do
    get novells_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get novells_destroy_url
    assert_response :success
  end

end
