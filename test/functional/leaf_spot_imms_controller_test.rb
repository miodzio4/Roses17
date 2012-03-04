require 'test_helper'

class LeafSpotImmsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => LeafSpotImm.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    LeafSpotImm.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    LeafSpotImm.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to leaf_spot_imm_url(assigns(:leaf_spot_imm))
  end

  def test_edit
    get :edit, :id => LeafSpotImm.first
    assert_template 'edit'
  end

  def test_update_invalid
    LeafSpotImm.any_instance.stubs(:valid?).returns(false)
    put :update, :id => LeafSpotImm.first
    assert_template 'edit'
  end

  def test_update_valid
    LeafSpotImm.any_instance.stubs(:valid?).returns(true)
    put :update, :id => LeafSpotImm.first
    assert_redirected_to leaf_spot_imm_url(assigns(:leaf_spot_imm))
  end

  def test_destroy
    leaf_spot_imm = LeafSpotImm.first
    delete :destroy, :id => leaf_spot_imm
    assert_redirected_to leaf_spot_imms_url
    assert !LeafSpotImm.exists?(leaf_spot_imm.id)
  end
end
