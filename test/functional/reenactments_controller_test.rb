require 'test_helper'

class ReenactmentsControllerTest < ActionController::TestCase
  setup do
    @reenactment = reenactments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reenactments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reenactment" do
    assert_difference('Reenactment.count') do
      post :create, :reenactment => @reenactment.attributes
    end

    assert_redirected_to reenactment_path(assigns(:reenactment))
  end

  test "should show reenactment" do
    get :show, :id => @reenactment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reenactment.to_param
    assert_response :success
  end

  test "should update reenactment" do
    put :update, :id => @reenactment.to_param, :reenactment => @reenactment.attributes
    assert_redirected_to reenactment_path(assigns(:reenactment))
  end

  test "should destroy reenactment" do
    assert_difference('Reenactment.count', -1) do
      delete :destroy, :id => @reenactment.to_param
    end

    assert_redirected_to reenactments_path
  end
end
