require 'test_helper'

class FreezeImmSearchesControllerTest < ActionController::TestCase
  setup do
    @freeze_imm_search = freeze_imm_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freeze_imm_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freeze_imm_search" do
    assert_difference('FreezeImmSearch.count') do
      post :create, freeze_imm_search: { freeze_imm_id: @freeze_imm_search.freeze_imm_id, search_id: @freeze_imm_search.search_id }
    end

    assert_redirected_to freeze_imm_search_path(assigns(:freeze_imm_search))
  end

  test "should show freeze_imm_search" do
    get :show, id: @freeze_imm_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freeze_imm_search
    assert_response :success
  end

  test "should update freeze_imm_search" do
    patch :update, id: @freeze_imm_search, freeze_imm_search: { freeze_imm_id: @freeze_imm_search.freeze_imm_id, search_id: @freeze_imm_search.search_id }
    assert_redirected_to freeze_imm_search_path(assigns(:freeze_imm_search))
  end

  test "should destroy freeze_imm_search" do
    assert_difference('FreezeImmSearch.count', -1) do
      delete :destroy, id: @freeze_imm_search
    end

    assert_redirected_to freeze_imm_searches_path
  end
end
