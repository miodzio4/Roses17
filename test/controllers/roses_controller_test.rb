require 'test_helper'

class RosesControllerTest < ActionController::TestCase
  setup do
    @rose = roses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rose" do
    assert_difference('Rose.count') do
      post :create, rose: { ADR: @rose.ADR, cultivation: @rose.cultivation, description: @rose.description, flower_color_desc: @rose.flower_color_desc, flower_color_id: @rose.flower_color_id, flower_shape: @rose.flower_shape, fragrance_id: @rose.fragrance_id, freeze_imm_id: @rose.freeze_imm_id, height_id: @rose.height_id, height_text: @rose.height_text, leaf_spot_imm_id: @rose.leaf_spot_imm_id, leaves_color: @rose.leaves_color, milddew_imm_id: @rose.milddew_imm_id, name: @rose.name, origin: @rose.origin, remarks: @rose.remarks, synonims: @rose.synonims, type_id: @rose.type_id, year: @rose.year }
    end

    assert_redirected_to rose_path(assigns(:rose))
  end

  test "should show rose" do
    get :show, id: @rose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rose
    assert_response :success
  end

  test "should update rose" do
    patch :update, id: @rose, rose: { ADR: @rose.ADR, cultivation: @rose.cultivation, description: @rose.description, flower_color_desc: @rose.flower_color_desc, flower_color_id: @rose.flower_color_id, flower_shape: @rose.flower_shape, fragrance_id: @rose.fragrance_id, freeze_imm_id: @rose.freeze_imm_id, height_id: @rose.height_id, height_text: @rose.height_text, leaf_spot_imm_id: @rose.leaf_spot_imm_id, leaves_color: @rose.leaves_color, milddew_imm_id: @rose.milddew_imm_id, name: @rose.name, origin: @rose.origin, remarks: @rose.remarks, synonims: @rose.synonims, type_id: @rose.type_id, year: @rose.year }
    assert_redirected_to rose_path(assigns(:rose))
  end

  test "should destroy rose" do
    assert_difference('Rose.count', -1) do
      delete :destroy, id: @rose
    end

    assert_redirected_to roses_path
  end
end
