require 'test_helper'

class FlowerColorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => FlowerColor.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    FlowerColor.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    FlowerColor.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to flower_color_url(assigns(:flower_color))
  end

  def test_edit
    get :edit, :id => FlowerColor.first
    assert_template 'edit'
  end

  def test_update_invalid
    FlowerColor.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FlowerColor.first
    assert_template 'edit'
  end

  def test_update_valid
    FlowerColor.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FlowerColor.first
    assert_redirected_to flower_color_url(assigns(:flower_color))
  end

  def test_destroy
    flower_color = FlowerColor.first
    delete :destroy, :id => flower_color
    assert_redirected_to flower_colors_url
    assert !FlowerColor.exists?(flower_color.id)
  end
end
