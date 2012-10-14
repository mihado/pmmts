require 'test_helper'

class MtypesControllerTest < ActionController::TestCase
  setup do
    @mtype = mtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtype" do
    assert_difference('Mtype.count') do
      post :create, mtype: { code: @mtype.code, desc: @mtype.desc }
    end

    assert_redirected_to mtype_path(assigns(:mtype))
  end

  test "should show mtype" do
    get :show, id: @mtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtype
    assert_response :success
  end

  test "should update mtype" do
    put :update, id: @mtype, mtype: { code: @mtype.code, desc: @mtype.desc }
    assert_redirected_to mtype_path(assigns(:mtype))
  end

  test "should destroy mtype" do
    assert_difference('Mtype.count', -1) do
      delete :destroy, id: @mtype
    end

    assert_redirected_to mtypes_path
  end
end
