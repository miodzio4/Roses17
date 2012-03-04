require 'test_helper'

class FreezeImmsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => FreezeImm.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    FreezeImm.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    FreezeImm.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to freeze_imm_url(assigns(:freeze_imm))
  end

  def test_edit
    get :edit, :id => FreezeImm.first
    assert_template 'edit'
  end

  def test_update_invalid
    FreezeImm.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FreezeImm.first
    assert_template 'edit'
  end

  def test_update_valid
    FreezeImm.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FreezeImm.first
    assert_redirected_to freeze_imm_url(assigns(:freeze_imm))
  end

  def test_destroy
    freeze_imm = FreezeImm.first
    delete :destroy, :id => freeze_imm
    assert_redirected_to freeze_imms_url
    assert !FreezeImm.exists?(freeze_imm.id)
  end
end
