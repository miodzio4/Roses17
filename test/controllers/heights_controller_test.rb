require 'test_helper'

class HeightsControllerTest < ActionController::TestCase
  setup do
    @height = heights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create height" do
    assert_difference('Height.count') do
      post :create, height: { description: @height.description, name: @height.name }
    end

    assert_redirected_to height_path(assigns(:height))
  end

  test "should show height" do
    get :show, id: @height
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @height
    assert_response :success
  end

  test "should update height" do
    patch :update, id: @height, height: { description: @height.description, name: @height.name }
    assert_redirected_to height_path(assigns(:height))
  end

  test "should destroy height" do
    assert_difference('Height.count', -1) do
      delete :destroy, id: @height
    end

    assert_redirected_to heights_path
  end
end
