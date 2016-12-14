require 'test_helper'

class SpekSelectionsControllerTest < ActionController::TestCase
  setup do
    @spek_selection = spek_selections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spek_selections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spek_selection" do
    assert_difference('SpekSelection.count') do
      post :create, spek_selection: { abnormality: @spek_selection.abnormality, code: @spek_selection.code, color_id: @spek_selection.color_id, denomination: @spek_selection.denomination, headSize: @spek_selection.headSize, location: @spek_selection.location, numPetals: @spek_selection.numPetals, numPlants: @spek_selection.numPlants, opening: @spek_selection.opening, production: @spek_selection.production, remarks: @spek_selection.remarks, scent: @spek_selection.scent, status: @spek_selection.status, steamLenght: @spek_selection.steamLenght, trademark: @spek_selection.trademark, year: @spek_selection.year }
    end

    assert_redirected_to spek_selection_path(assigns(:spek_selection))
  end

  test "should show spek_selection" do
    get :show, id: @spek_selection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spek_selection
    assert_response :success
  end

  test "should update spek_selection" do
    patch :update, id: @spek_selection, spek_selection: { abnormality: @spek_selection.abnormality, code: @spek_selection.code, color_id: @spek_selection.color_id, denomination: @spek_selection.denomination, headSize: @spek_selection.headSize, location: @spek_selection.location, numPetals: @spek_selection.numPetals, numPlants: @spek_selection.numPlants, opening: @spek_selection.opening, production: @spek_selection.production, remarks: @spek_selection.remarks, scent: @spek_selection.scent, status: @spek_selection.status, steamLenght: @spek_selection.steamLenght, trademark: @spek_selection.trademark, year: @spek_selection.year }
    assert_redirected_to spek_selection_path(assigns(:spek_selection))
  end

  test "should destroy spek_selection" do
    assert_difference('SpekSelection.count', -1) do
      delete :destroy, id: @spek_selection
    end

    assert_redirected_to spek_selections_path
  end
end
