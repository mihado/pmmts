require 'test_helper'

class OffcutsControllerTest < ActionController::TestCase
  setup do
    @offcut = offcuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offcuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offcut" do
    assert_difference('Offcut.count') do
      post :create, offcut: { code: @offcut.code, description: @offcut.description, height: @offcut.height, in_use: @offcut.in_use, mtype: @offcut.mtype, thickness: @offcut.thickness, use_up: @offcut.use_up, width: @offcut.width }
    end

    assert_redirected_to offcut_path(assigns(:offcut))
  end

  test "should show offcut" do
    get :show, id: @offcut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offcut
    assert_response :success
  end

  test "should update offcut" do
    put :update, id: @offcut, offcut: { code: @offcut.code, description: @offcut.description, height: @offcut.height, in_use: @offcut.in_use, mtype: @offcut.mtype, thickness: @offcut.thickness, use_up: @offcut.use_up, width: @offcut.width }
    assert_redirected_to offcut_path(assigns(:offcut))
  end

  test "should destroy offcut" do
    assert_difference('Offcut.count', -1) do
      delete :destroy, id: @offcut
    end

    assert_redirected_to offcuts_path
  end
end
