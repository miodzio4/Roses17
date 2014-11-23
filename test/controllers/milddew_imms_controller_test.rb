require 'test_helper'

class MilddewImmsControllerTest < ActionController::TestCase
  setup do
    @milddew_imm = milddew_imms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milddew_imms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milddew_imm" do
    assert_difference('MilddewImm.count') do
      post :create, milddew_imm: { description: @milddew_imm.description, name: @milddew_imm.name }
    end

    assert_redirected_to milddew_imm_path(assigns(:milddew_imm))
  end

  test "should show milddew_imm" do
    get :show, id: @milddew_imm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milddew_imm
    assert_response :success
  end

  test "should update milddew_imm" do
    patch :update, id: @milddew_imm, milddew_imm: { description: @milddew_imm.description, name: @milddew_imm.name }
    assert_redirected_to milddew_imm_path(assigns(:milddew_imm))
  end

  test "should destroy milddew_imm" do
    assert_difference('MilddewImm.count', -1) do
      delete :destroy, id: @milddew_imm
    end

    assert_redirected_to milddew_imms_path
  end
end
