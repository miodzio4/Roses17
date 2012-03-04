require 'test_helper'

class FragrancesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Fragrance.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Fragrance.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Fragrance.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fragrance_url(assigns(:fragrance))
  end

  def test_edit
    get :edit, :id => Fragrance.first
    assert_template 'edit'
  end

  def test_update_invalid
    Fragrance.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Fragrance.first
    assert_template 'edit'
  end

  def test_update_valid
    Fragrance.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Fragrance.first
    assert_redirected_to fragrance_url(assigns(:fragrance))
  end

  def test_destroy
    fragrance = Fragrance.first
    delete :destroy, :id => fragrance
    assert_redirected_to fragrances_url
    assert !Fragrance.exists?(fragrance.id)
  end
end
