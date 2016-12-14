require 'test_helper'

class IrbSelectionsControllerTest < ActionController::TestCase
  setup do
    @irb_selection = irb_selections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irb_selections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irb_selection" do
    assert_difference('IrbSelection.count') do
      post :create, irb_selection: { abnormality: @irb_selection.abnormality, code: @irb_selection.code, codeCross: @irb_selection.codeCross, color_id: @irb_selection.color_id, denomination: @irb_selection.denomination, headSize: @irb_selection.headSize, location: @irb_selection.location, numPetals: @irb_selection.numPetals, numPlants: @irb_selection.numPlants, opening: @irb_selection.opening, production: @irb_selection.production, remarks: @irb_selection.remarks, scent: @irb_selection.scent, status: @irb_selection.status, steamLenght: @irb_selection.steamLenght, trademark: @irb_selection.trademark, year: @irb_selection.year }
    end

    assert_redirected_to irb_selection_path(assigns(:irb_selection))
  end

  test "should show irb_selection" do
    get :show, id: @irb_selection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irb_selection
    assert_response :success
  end

  test "should update irb_selection" do
    patch :update, id: @irb_selection, irb_selection: { abnormality: @irb_selection.abnormality, code: @irb_selection.code, codeCross: @irb_selection.codeCross, color_id: @irb_selection.color_id, denomination: @irb_selection.denomination, headSize: @irb_selection.headSize, location: @irb_selection.location, numPetals: @irb_selection.numPetals, numPlants: @irb_selection.numPlants, opening: @irb_selection.opening, production: @irb_selection.production, remarks: @irb_selection.remarks, scent: @irb_selection.scent, status: @irb_selection.status, steamLenght: @irb_selection.steamLenght, trademark: @irb_selection.trademark, year: @irb_selection.year }
    assert_redirected_to irb_selection_path(assigns(:irb_selection))
  end

  test "should destroy irb_selection" do
    assert_difference('IrbSelection.count', -1) do
      delete :destroy, id: @irb_selection
    end

    assert_redirected_to irb_selections_path
  end
end
