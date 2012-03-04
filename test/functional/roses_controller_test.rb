require 'test_helper'

class RosesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Rose.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Rose.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Rose.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to rose_url(assigns(:rose))
  end

  def test_edit
    get :edit, :id => Rose.first
    assert_template 'edit'
  end

  def test_update_invalid
    Rose.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Rose.first
    assert_template 'edit'
  end

  def test_update_valid
    Rose.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Rose.first
    assert_redirected_to rose_url(assigns(:rose))
  end

  def test_destroy
    rose = Rose.first
    delete :destroy, :id => rose
    assert_redirected_to roses_url
    assert !Rose.exists?(rose.id)
  end
end
