require 'test_helper'

class GeneticBanksControllerTest < ActionController::TestCase
  setup do
    @genetic_bank = genetic_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genetic_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genetic_bank" do
    assert_difference('GeneticBank.count') do
      post :create, genetic_bank: { abnormality: @genetic_bank.abnormality, breeder: @genetic_bank.breeder, code: @genetic_bank.code, denomination: @genetic_bank.denomination, headSize: @genetic_bank.headSize, location: @genetic_bank.location, numPetals: @genetic_bank.numPetals, numPlants: @genetic_bank.numPlants, opening: @genetic_bank.opening, production: @genetic_bank.production, remarks: @genetic_bank.remarks, scent: @genetic_bank.scent, status: @genetic_bank.status, steamLenght: @genetic_bank.steamLenght, trademark: @genetic_bank.trademark, year: @genetic_bank.year }
    end

    assert_redirected_to genetic_bank_path(assigns(:genetic_bank))
  end

  test "should show genetic_bank" do
    get :show, id: @genetic_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genetic_bank
    assert_response :success
  end

  test "should update genetic_bank" do
    patch :update, id: @genetic_bank, genetic_bank: { abnormality: @genetic_bank.abnormality, breeder: @genetic_bank.breeder, code: @genetic_bank.code, denomination: @genetic_bank.denomination, headSize: @genetic_bank.headSize, location: @genetic_bank.location, numPetals: @genetic_bank.numPetals, numPlants: @genetic_bank.numPlants, opening: @genetic_bank.opening, production: @genetic_bank.production, remarks: @genetic_bank.remarks, scent: @genetic_bank.scent, status: @genetic_bank.status, steamLenght: @genetic_bank.steamLenght, trademark: @genetic_bank.trademark, year: @genetic_bank.year }
    assert_redirected_to genetic_bank_path(assigns(:genetic_bank))
  end

  test "should destroy genetic_bank" do
    assert_difference('GeneticBank.count', -1) do
      delete :destroy, id: @genetic_bank
    end

    assert_redirected_to genetic_banks_path
  end
end
