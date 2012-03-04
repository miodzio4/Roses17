require 'test_helper'

class HeightsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Height.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Height.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Height.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to height_url(assigns(:height))
  end

  def test_edit
    get :edit, :id => Height.first
    assert_template 'edit'
  end

  def test_update_invalid
    Height.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Height.first
    assert_template 'edit'
  end

  def test_update_valid
    Height.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Height.first
    assert_redirected_to height_url(assigns(:height))
  end

  def test_destroy
    height = Height.first
    delete :destroy, :id => height
    assert_redirected_to heights_url
    assert !Height.exists?(height.id)
  end
end
