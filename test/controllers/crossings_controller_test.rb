require 'test_helper'

class CrossingsControllerTest < ActionController::TestCase
  setup do
    @crossing = crossings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crossings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crossing" do
    assert_difference('Crossing.count') do
      post :create, crossing: { badCrossings: @crossing.badCrossings, crossCode: @crossing.crossCode, crossWeek: @crossing.crossWeek, dateHarvest: @crossing.dateHarvest, effective: @crossing.effective, father: @crossing.father, goodCrossings: @crossing.goodCrossings, mother: @crossing.mother, numCrossings: @crossing.numCrossings, numSeeds: @crossing.numSeeds, percentageEffective: @crossing.percentageEffective, status: @crossing.status, weekHarvest: @crossing.weekHarvest, year: @crossing.year }
    end

    assert_redirected_to crossing_path(assigns(:crossing))
  end

  test "should show crossing" do
    get :show, id: @crossing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crossing
    assert_response :success
  end

  test "should update crossing" do
    patch :update, id: @crossing, crossing: { badCrossings: @crossing.badCrossings, crossCode: @crossing.crossCode, crossWeek: @crossing.crossWeek, dateHarvest: @crossing.dateHarvest, effective: @crossing.effective, father: @crossing.father, goodCrossings: @crossing.goodCrossings, mother: @crossing.mother, numCrossings: @crossing.numCrossings, numSeeds: @crossing.numSeeds, percentageEffective: @crossing.percentageEffective, status: @crossing.status, weekHarvest: @crossing.weekHarvest, year: @crossing.year }
    assert_redirected_to crossing_path(assigns(:crossing))
  end

  test "should destroy crossing" do
    assert_difference('Crossing.count', -1) do
      delete :destroy, id: @crossing
    end

    assert_redirected_to crossings_path
  end
end
