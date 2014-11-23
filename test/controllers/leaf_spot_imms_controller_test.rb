require 'test_helper'

class LeafSpotImmsControllerTest < ActionController::TestCase
  setup do
    @leaf_spot_imm = leaf_spot_imms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaf_spot_imms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaf_spot_imm" do
    assert_difference('LeafSpotImm.count') do
      post :create, leaf_spot_imm: { description: @leaf_spot_imm.description, name: @leaf_spot_imm.name }
    end

    assert_redirected_to leaf_spot_imm_path(assigns(:leaf_spot_imm))
  end

  test "should show leaf_spot_imm" do
    get :show, id: @leaf_spot_imm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaf_spot_imm
    assert_response :success
  end

  test "should update leaf_spot_imm" do
    patch :update, id: @leaf_spot_imm, leaf_spot_imm: { description: @leaf_spot_imm.description, name: @leaf_spot_imm.name }
    assert_redirected_to leaf_spot_imm_path(assigns(:leaf_spot_imm))
  end

  test "should destroy leaf_spot_imm" do
    assert_difference('LeafSpotImm.count', -1) do
      delete :destroy, id: @leaf_spot_imm
    end

    assert_redirected_to leaf_spot_imms_path
  end
end
