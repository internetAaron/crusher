require 'test_helper'

class VerticalShaftImpactCrushersControllerTest < ActionController::TestCase
  setup do
    @vertical_shaft_impact_crusher = vertical_shaft_impact_crushers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vertical_shaft_impact_crushers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vertical_shaft_impact_crusher" do
    assert_difference('VerticalShaftImpactCrusher.count') do
      post :create, vertical_shaft_impact_crusher: { drive_diameter: @vertical_shaft_impact_crusher.drive_diameter, driven_diameter: @vertical_shaft_impact_crusher.driven_diameter, motor_rpm: @vertical_shaft_impact_crusher.motor_rpm, rotor_diameter: @vertical_shaft_impact_crusher.rotor_diameter }
    end

    assert_redirected_to vertical_shaft_impact_crusher_path(assigns(:vertical_shaft_impact_crusher))
  end

  test "should show vertical_shaft_impact_crusher" do
    get :show, id: @vertical_shaft_impact_crusher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vertical_shaft_impact_crusher
    assert_response :success
  end

  test "should update vertical_shaft_impact_crusher" do
    patch :update, id: @vertical_shaft_impact_crusher, vertical_shaft_impact_crusher: { drive_diameter: @vertical_shaft_impact_crusher.drive_diameter, driven_diameter: @vertical_shaft_impact_crusher.driven_diameter, motor_rpm: @vertical_shaft_impact_crusher.motor_rpm, rotor_diameter: @vertical_shaft_impact_crusher.rotor_diameter }
    assert_redirected_to vertical_shaft_impact_crusher_path(assigns(:vertical_shaft_impact_crusher))
  end

  test "should destroy vertical_shaft_impact_crusher" do
    assert_difference('VerticalShaftImpactCrusher.count', -1) do
      delete :destroy, id: @vertical_shaft_impact_crusher
    end

    assert_redirected_to vertical_shaft_impact_crushers_path
  end
end
