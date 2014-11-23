require 'test_helper'

class HeightSearchesControllerTest < ActionController::TestCase
  setup do
    @height_search = height_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:height_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create height_search" do
    assert_difference('HeightSearch.count') do
      post :create, height_search: { height_id: @height_search.height_id, search_id: @height_search.search_id }
    end

    assert_redirected_to height_search_path(assigns(:height_search))
  end

  test "should show height_search" do
    get :show, id: @height_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @height_search
    assert_response :success
  end

  test "should update height_search" do
    patch :update, id: @height_search, height_search: { height_id: @height_search.height_id, search_id: @height_search.search_id }
    assert_redirected_to height_search_path(assigns(:height_search))
  end

  test "should destroy height_search" do
    assert_difference('HeightSearch.count', -1) do
      delete :destroy, id: @height_search
    end

    assert_redirected_to height_searches_path
  end
end
