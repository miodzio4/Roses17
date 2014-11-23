require 'test_helper'

class LeafSpotImmSearchesControllerTest < ActionController::TestCase
  setup do
    @leaf_spot_imm_search = leaf_spot_imm_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaf_spot_imm_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaf_spot_imm_search" do
    assert_difference('LeafSpotImmSearch.count') do
      post :create, leaf_spot_imm_search: { leaf_spot_imm_id: @leaf_spot_imm_search.leaf_spot_imm_id, search_id: @leaf_spot_imm_search.search_id }
    end

    assert_redirected_to leaf_spot_imm_search_path(assigns(:leaf_spot_imm_search))
  end

  test "should show leaf_spot_imm_search" do
    get :show, id: @leaf_spot_imm_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaf_spot_imm_search
    assert_response :success
  end

  test "should update leaf_spot_imm_search" do
    patch :update, id: @leaf_spot_imm_search, leaf_spot_imm_search: { leaf_spot_imm_id: @leaf_spot_imm_search.leaf_spot_imm_id, search_id: @leaf_spot_imm_search.search_id }
    assert_redirected_to leaf_spot_imm_search_path(assigns(:leaf_spot_imm_search))
  end

  test "should destroy leaf_spot_imm_search" do
    assert_difference('LeafSpotImmSearch.count', -1) do
      delete :destroy, id: @leaf_spot_imm_search
    end

    assert_redirected_to leaf_spot_imm_searches_path
  end
end
