class GeneticBanksController < ApplicationController
  before_action :set_genetic_bank, only: [:show, :edit, :update, :destroy]

  # GET /genetic_banks
  # GET /genetic_banks.json
  def index
    @genetic_banks = GeneticBank.all
  end

  # GET /genetic_banks/1
  # GET /genetic_banks/1.json
  def show
  end

  # GET /genetic_banks/new
  def new
    @genetic_bank = GeneticBank.new
  end

  # GET /genetic_banks/1/edit
  def edit
  end

  # POST /genetic_banks
  # POST /genetic_banks.json
  def create
    @genetic_bank = GeneticBank.new(genetic_bank_params)

    respond_to do |format|
      if @genetic_bank.save
        format.html { redirect_to @genetic_bank, notice: 'Genetic bank was successfully created.' }
        format.json { render :show, status: :created, location: @genetic_bank }
      else
        format.html { render :new }
        format.json { render json: @genetic_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genetic_banks/1
  # PATCH/PUT /genetic_banks/1.json
  def update
    respond_to do |format|
      if @genetic_bank.update(genetic_bank_params)
        format.html { redirect_to @genetic_bank, notice: 'Genetic bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @genetic_bank }
      else
        format.html { render :edit }
        format.json { render json: @genetic_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genetic_banks/1
  # DELETE /genetic_banks/1.json
  def destroy
    @genetic_bank.destroy
    respond_to do |format|
      format.html { redirect_to genetic_banks_url, notice: 'Genetic bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genetic_bank
      @genetic_bank = GeneticBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genetic_bank_params
      params.require(:genetic_bank).permit(:code, :location, :trademark, :denomination, :year, :breeder, :status, :numPlants, :scent, :headSize, :numPetals, :steamLenght, :production, :opening, :abnormality, :remarks)
    end
end
