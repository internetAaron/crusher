require 'test_helper'

class SimpleVibratingGrizzliesControllerTest < ActionController::TestCase
  setup do
    @simple_vibrating_grizzly = simple_vibrating_grizzlies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_vibrating_grizzlies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_vibrating_grizzly" do
    assert_difference('SimpleVibratingGrizzly.count') do
      post :create, simple_vibrating_grizzly: { grizzly_length: @simple_vibrating_grizzly.grizzly_length, grizzly_width: @simple_vibrating_grizzly.grizzly_width, nominal_opening: @simple_vibrating_grizzly.nominal_opening }
    end

    assert_redirected_to simple_vibrating_grizzly_path(assigns(:simple_vibrating_grizzly))
  end

  test "should show simple_vibrating_grizzly" do
    get :show, id: @simple_vibrating_grizzly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_vibrating_grizzly
    assert_response :success
  end

  test "should update simple_vibrating_grizzly" do
    patch :update, id: @simple_vibrating_grizzly, simple_vibrating_grizzly: { grizzly_length: @simple_vibrating_grizzly.grizzly_length, grizzly_width: @simple_vibrating_grizzly.grizzly_width, nominal_opening: @simple_vibrating_grizzly.nominal_opening }
    assert_redirected_to simple_vibrating_grizzly_path(assigns(:simple_vibrating_grizzly))
  end

  test "should destroy simple_vibrating_grizzly" do
    assert_difference('SimpleVibratingGrizzly.count', -1) do
      delete :destroy, id: @simple_vibrating_grizzly
    end

    assert_redirected_to simple_vibrating_grizzlies_path
  end
end
