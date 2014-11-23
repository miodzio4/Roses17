require 'test_helper'

class TypeSearchesControllerTest < ActionController::TestCase
  setup do
    @type_search = type_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_search" do
    assert_difference('TypeSearch.count') do
      post :create, type_search: { search_id: @type_search.search_id, type_id: @type_search.type_id }
    end

    assert_redirected_to type_search_path(assigns(:type_search))
  end

  test "should show type_search" do
    get :show, id: @type_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_search
    assert_response :success
  end

  test "should update type_search" do
    patch :update, id: @type_search, type_search: { search_id: @type_search.search_id, type_id: @type_search.type_id }
    assert_redirected_to type_search_path(assigns(:type_search))
  end

  test "should destroy type_search" do
    assert_difference('TypeSearch.count', -1) do
      delete :destroy, id: @type_search
    end

    assert_redirected_to type_searches_path
  end
end
