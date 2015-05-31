require 'test_helper'

class HorizontalShaftImpactCrushersControllerTest < ActionController::TestCase
  setup do
    @horizontal_shaft_impact_crusher = horizontal_shaft_impact_crushers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horizontal_shaft_impact_crushers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horizontal_shaft_impact_crusher" do
    assert_difference('HorizontalShaftImpactCrusher.count') do
      post :create, horizontal_shaft_impact_crusher: { drive_diameter: @horizontal_shaft_impact_crusher.drive_diameter, driven_diameter: @horizontal_shaft_impact_crusher.driven_diameter, name: @horizontal_shaft_impact_crusher.name, roto_diameter: @horizontal_shaft_impact_crusher.roto_diameter, rpm: @horizontal_shaft_impact_crusher.rpm, shaft_rpm: @horizontal_shaft_impact_crusher.shaft_rpm, tip_speed: @horizontal_shaft_impact_crusher.tip_speed }
    end

    assert_redirected_to horizontal_shaft_impact_crusher_path(assigns(:horizontal_shaft_impact_crusher))
  end

  test "should show horizontal_shaft_impact_crusher" do
    get :show, id: @horizontal_shaft_impact_crusher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horizontal_shaft_impact_crusher
    assert_response :success
  end

  test "should update horizontal_shaft_impact_crusher" do
    patch :update, id: @horizontal_shaft_impact_crusher, horizontal_shaft_impact_crusher: { drive_diameter: @horizontal_shaft_impact_crusher.drive_diameter, driven_diameter: @horizontal_shaft_impact_crusher.driven_diameter, name: @horizontal_shaft_impact_crusher.name, roto_diameter: @horizontal_shaft_impact_crusher.roto_diameter, rpm: @horizontal_shaft_impact_crusher.rpm, shaft_rpm: @horizontal_shaft_impact_crusher.shaft_rpm, tip_speed: @horizontal_shaft_impact_crusher.tip_speed }
    assert_redirected_to horizontal_shaft_impact_crusher_path(assigns(:horizontal_shaft_impact_crusher))
  end

  test "should destroy horizontal_shaft_impact_crusher" do
    assert_difference('HorizontalShaftImpactCrusher.count', -1) do
      delete :destroy, id: @horizontal_shaft_impact_crusher
    end

    assert_redirected_to horizontal_shaft_impact_crushers_path
  end
end
