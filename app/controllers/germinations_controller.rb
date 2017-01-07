class GerminationsController < ApplicationController
  before_action :set_germination, only: [:show, :edit, :update, :destroy]

  # GET /germinations
  # GET /germinations.json
  def index
    @germinations = Germination.all
  end

  # GET /germinations/1
  # GET /germinations/1.json
  def show
  end

  # GET /germinations/new
  def new
    @germination = Germination.new
  end

  # GET /germinations/1/edit
  def edit
  end

  # POST /germinations
  # POST /germinations.json
  def create
    @germination = Germination.new(germination_params)

    respond_to do |format|
      if @germination.save
        format.html { redirect_to @germination, notice: 'Germination was successfully created.' }
        format.json { render :show, status: :created, location: @germination }
      else
        format.html { render :new }
        format.json { render json: @germination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /germinations/1
  # PATCH/PUT /germinations/1.json
  def update
    respond_to do |format|
      if @germination.update(germination_params)
        format.html { redirect_to @germination, notice: 'Germination was successfully updated.' }
        format.json { render :show, status: :ok, location: @germination }
      else
        format.html { render :edit }
        format.json { render json: @germination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /germinations/1
  # DELETE /germinations/1.json
  def destroy
    @germination.destroy
    respond_to do |format|
      format.html { redirect_to germinations_url, notice: 'Germination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_germination
      @germination = Germination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def germination_params
      params.require(:germination).permit(:seed_id, :week, :numGerminations)
    end
end