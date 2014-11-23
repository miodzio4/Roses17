require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, search: { ADR: @search.ADR, flower_color_id: @search.flower_color_id, fragrance_id: @search.fragrance_id, freeze_imm_id: @search.freeze_imm_id, height_id: @search.height_id, leaf_spot_imm_id: @search.leaf_spot_imm_id, milddew_imm_id: @search.milddew_imm_id, name: @search.name, type_id: @search.type_id }
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, id: @search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search
    assert_response :success
  end

  test "should update search" do
    patch :update, id: @search, search: { ADR: @search.ADR, flower_color_id: @search.flower_color_id, fragrance_id: @search.fragrance_id, freeze_imm_id: @search.freeze_imm_id, height_id: @search.height_id, leaf_spot_imm_id: @search.leaf_spot_imm_id, milddew_imm_id: @search.milddew_imm_id, name: @search.name, type_id: @search.type_id }
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, id: @search
    end

    assert_redirected_to searches_path
  end
end
