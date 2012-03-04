require 'test_helper'

class MilddewImmsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MilddewImm.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MilddewImm.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MilddewImm.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to milddew_imm_url(assigns(:milddew_imm))
  end

  def test_edit
    get :edit, :id => MilddewImm.first
    assert_template 'edit'
  end

  def test_update_invalid
    MilddewImm.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MilddewImm.first
    assert_template 'edit'
  end

  def test_update_valid
    MilddewImm.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MilddewImm.first
    assert_redirected_to milddew_imm_url(assigns(:milddew_imm))
  end

  def test_destroy
    milddew_imm = MilddewImm.first
    delete :destroy, :id => milddew_imm
    assert_redirected_to milddew_imms_url
    assert !MilddewImm.exists?(milddew_imm.id)
  end
end
