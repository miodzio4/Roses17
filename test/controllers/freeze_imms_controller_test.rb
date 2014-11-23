require 'test_helper'

class FreezeImmsControllerTest < ActionController::TestCase
  setup do
    @freeze_imm = freeze_imms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freeze_imms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freeze_imm" do
    assert_difference('FreezeImm.count') do
      post :create, freeze_imm: { description: @freeze_imm.description, name: @freeze_imm.name }
    end

    assert_redirected_to freeze_imm_path(assigns(:freeze_imm))
  end

  test "should show freeze_imm" do
    get :show, id: @freeze_imm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freeze_imm
    assert_response :success
  end

  test "should update freeze_imm" do
    patch :update, id: @freeze_imm, freeze_imm: { description: @freeze_imm.description, name: @freeze_imm.name }
    assert_redirected_to freeze_imm_path(assigns(:freeze_imm))
  end

  test "should destroy freeze_imm" do
    assert_difference('FreezeImm.count', -1) do
      delete :destroy, id: @freeze_imm
    end

    assert_redirected_to freeze_imms_path
  end
end
