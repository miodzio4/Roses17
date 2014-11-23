require 'test_helper'

class FlowerColorSearchesControllerTest < ActionController::TestCase
  setup do
    @flower_color_search = flower_color_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_color_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_color_search" do
    assert_difference('FlowerColorSearch.count') do
      post :create, flower_color_search: { flower_color_id: @flower_color_search.flower_color_id, search_id: @flower_color_search.search_id }
    end

    assert_redirected_to flower_color_search_path(assigns(:flower_color_search))
  end

  test "should show flower_color_search" do
    get :show, id: @flower_color_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower_color_search
    assert_response :success
  end

  test "should update flower_color_search" do
    patch :update, id: @flower_color_search, flower_color_search: { flower_color_id: @flower_color_search.flower_color_id, search_id: @flower_color_search.search_id }
    assert_redirected_to flower_color_search_path(assigns(:flower_color_search))
  end

  test "should destroy flower_color_search" do
    assert_difference('FlowerColorSearch.count', -1) do
      delete :destroy, id: @flower_color_search
    end

    assert_redirected_to flower_color_searches_path
  end
end
