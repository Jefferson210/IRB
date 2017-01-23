class CrossingsController < ApplicationController
    before_action :set_crossing, only: [:show, :edit, :update, :destroy]

    # GET /crossings
    # GET /crossings.json
    def index
        @crossings = Crossing.all
    end

    # GET /crossings/1
    # GET /crossings/1.json
    def show
    end

    def getCrossing
        @objectCrossing = Crossing.find(params[:id])
        respond_to do |format|
            format.json { render :json => @objectCrossing }
        end
    end

    # GET /crossings/new
    def new
        @crossing = Crossing.new
    end

    # GET /crossings/1/edit
    def edit
    end

    # POST /crossings
    # POST /crossings.json
    def create
        @crossing = Crossing.new(crossing_params)

        respond_to do |format|
            if @crossing.save
                format.html { redirect_to @crossing, notice: 'Crossing was successfully created.' }
                format.json { render :show, status: :created, location: @crossing }
            else
                format.html { render :new }
                format.json { render json: @crossing.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /crossings/1
    # PATCH/PUT /crossings/1.json
    def update
        respond_to do |format|
            if @crossing.update(crossing_params)
                format.html { redirect_to @crossing, notice: 'Crossing was successfully updated.' }
                format.json { render :show, status: :ok, location: @crossing }
            else
                format.html { render :edit }
                format.json { render json: @crossing.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /crossings/1
    # DELETE /crossings/1.json
    def destroy
        @crossing.destroy
        respond_to do |format|
            format.html { redirect_to crossings_url, notice: 'Crossing was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_crossing
        @crossing = Crossing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crossing_params
        params.require(:crossing).permit(:codeCross, :numOrder, :year, :status, :father_id, :mother_id, :crossWeek, :numCrossings, :goodCrossings, :badCrossings, :effective, :percentageEffective, :dateHarvest, :weekHarvest, :numSeeds, :numRepeat)
    end
end
