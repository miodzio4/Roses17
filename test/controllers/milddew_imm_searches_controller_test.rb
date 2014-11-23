require 'test_helper'

class MilddewImmSearchesControllerTest < ActionController::TestCase
  setup do
    @milddew_imm_search = milddew_imm_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milddew_imm_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milddew_imm_search" do
    assert_difference('MilddewImmSearch.count') do
      post :create, milddew_imm_search: { milddew_imm_id: @milddew_imm_search.milddew_imm_id, search_id: @milddew_imm_search.search_id }
    end

    assert_redirected_to milddew_imm_search_path(assigns(:milddew_imm_search))
  end

  test "should show milddew_imm_search" do
    get :show, id: @milddew_imm_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milddew_imm_search
    assert_response :success
  end

  test "should update milddew_imm_search" do
    patch :update, id: @milddew_imm_search, milddew_imm_search: { milddew_imm_id: @milddew_imm_search.milddew_imm_id, search_id: @milddew_imm_search.search_id }
    assert_redirected_to milddew_imm_search_path(assigns(:milddew_imm_search))
  end

  test "should destroy milddew_imm_search" do
    assert_difference('MilddewImmSearch.count', -1) do
      delete :destroy, id: @milddew_imm_search
    end

    assert_redirected_to milddew_imm_searches_path
  end
end
