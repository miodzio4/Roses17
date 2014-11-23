require 'test_helper'

class FragranceSearchesControllerTest < ActionController::TestCase
  setup do
    @fragrance_search = fragrance_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fragrance_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fragrance_search" do
    assert_difference('FragranceSearch.count') do
      post :create, fragrance_search: { fragrance_id: @fragrance_search.fragrance_id, search_id: @fragrance_search.search_id }
    end

    assert_redirected_to fragrance_search_path(assigns(:fragrance_search))
  end

  test "should show fragrance_search" do
    get :show, id: @fragrance_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fragrance_search
    assert_response :success
  end

  test "should update fragrance_search" do
    patch :update, id: @fragrance_search, fragrance_search: { fragrance_id: @fragrance_search.fragrance_id, search_id: @fragrance_search.search_id }
    assert_redirected_to fragrance_search_path(assigns(:fragrance_search))
  end

  test "should destroy fragrance_search" do
    assert_difference('FragranceSearch.count', -1) do
      delete :destroy, id: @fragrance_search
    end

    assert_redirected_to fragrance_searches_path
  end
end
