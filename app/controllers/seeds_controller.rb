class SeedsController < ApplicationController
    before_action :set_seed, only: [:show, :edit, :update, :destroy]

    # GET /seeds
    # GET /seeds.json
    def index
        @seeds = Seed.all
    end

    # GET /seeds/1
    # GET /seeds/1.json
    def show
    end

    def sumaTotalCode
        #        @sumaTotalCode = Seed.find(params[:id])
        #        @sumaTotalCode = Seed.all
        @sumaTotalCode = Seed.where(crossing_id: 1)
        #        @enCode = @sumaTotalCode.codeCross
        respond_to do |format|
            format.json { render :json => @sumaTotalCode }
        end
    end

    def getSeed
        @objectSeed = Seed.find(params[:id])
        respond_to do |format|
            format.json { render :json => @objectSeed }
        end
    end

    # GET /seeds/new
    def new
        @seed = Seed.new
    end

    # GET /seeds/1/edit
    def edit
    end

    # POST /seeds
    # POST /seeds.json
    def create
        @seed = Seed.new(seed_params)

        respond_to do |format|
            if @seed.save
                format.html { redirect_to @seed, notice: 'Seed was successfully created.' }
                format.json { render :show, status: :created, location: @seed }
            else
                format.html { render :new }
                format.json { render json: @seed.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /seeds/1
    # PATCH/PUT /seeds/1.json
    def update
        respond_to do |format|
            if @seed.update(seed_params)
                format.html { redirect_to @seed, notice: 'Seed was successfully updated.' }
                format.json { render :show, status: :ok, location: @seed }
            else
                format.html { render :edit }
                format.json { render json: @seed.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /seeds/1
    # DELETE /seeds/1.json
    def destroy
        @seed.destroy
        respond_to do |format|
            format.html { redirect_to seeds_url, notice: 'Seed was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_seed
        #        Seed.find(:first).to_param 
        #        params[:id] # => '1,1'
        #        Seed.find(params[:id])
        @seed = Seed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seed_params
        params.require(:seed).permit(:crossing_id, :sowDate, :origin, :numSeeds, :totalWeight, :week, :hydratation, :status, :dateOut, :germination, :codeCrossName, :codeCross)
    end

    helper_method :sumaCodeCrossNumRepeat
    def sumaCodeCrossNumRepeat
        @CodeCrossNumRepeat = Seed.group(:codeCrossName).sum(:numSeeds)    
    end

    helper_method :sumaCode
    def sumaCode
        @CodeCross = Seed.group(:codeCross).sum(:numSeeds)    
    end
end



