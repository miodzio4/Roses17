require 'test_helper'

class FlowerColorsControllerTest < ActionController::TestCase
  setup do
    @flower_color = flower_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_color" do
    assert_difference('FlowerColor.count') do
      post :create, flower_color: { description: @flower_color.description, name: @flower_color.name }
    end

    assert_redirected_to flower_color_path(assigns(:flower_color))
  end

  test "should show flower_color" do
    get :show, id: @flower_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower_color
    assert_response :success
  end

  test "should update flower_color" do
    patch :update, id: @flower_color, flower_color: { description: @flower_color.description, name: @flower_color.name }
    assert_redirected_to flower_color_path(assigns(:flower_color))
  end

  test "should destroy flower_color" do
    assert_difference('FlowerColor.count', -1) do
      delete :destroy, id: @flower_color
    end

    assert_redirected_to flower_colors_path
  end
end
