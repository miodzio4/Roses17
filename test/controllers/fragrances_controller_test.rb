require 'test_helper'

class FragrancesControllerTest < ActionController::TestCase
  setup do
    @fragrance = fragrances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fragrances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fragrance" do
    assert_difference('Fragrance.count') do
      post :create, fragrance: { description: @fragrance.description, name: @fragrance.name }
    end

    assert_redirected_to fragrance_path(assigns(:fragrance))
  end

  test "should show fragrance" do
    get :show, id: @fragrance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fragrance
    assert_response :success
  end

  test "should update fragrance" do
    patch :update, id: @fragrance, fragrance: { description: @fragrance.description, name: @fragrance.name }
    assert_redirected_to fragrance_path(assigns(:fragrance))
  end

  test "should destroy fragrance" do
    assert_difference('Fragrance.count', -1) do
      delete :destroy, id: @fragrance
    end

    assert_redirected_to fragrances_path
  end
end
