class GeneticBankPicturesController < ApplicationController
    #  before_action :set_genetic_bank_picture, only: [:show, :edit, :update, :destroy]
    #
    #  # GET /genetic_bank_pictures
    #  # GET /genetic_bank_pictures.json
    #  def index
    #    @genetic_bank_pictures = GeneticBankPicture.all
    #  end
    #
    #  # GET /genetic_bank_pictures/1
    #  # GET /genetic_bank_pictures/1.json
    #  def show
    #  end
    #
    #  # GET /genetic_bank_pictures/new
    #  def new
    #    @genetic_bank_picture = GeneticBankPicture.new
    #  end
    #
    #  # GET /genetic_bank_pictures/1/edit
    #  def edit
    #  end
    #
    #  # POST /genetic_bank_pictures
    #  # POST /genetic_bank_pictures.json
    #  def create
    #    @genetic_bank_picture = GeneticBankPicture.new(genetic_bank_picture_params)
    #
    #    respond_to do |format|
    #      if @genetic_bank_picture.save
    #        format.html { redirect_to @genetic_bank_picture, notice: 'Genetic bank picture was successfully created.' }
    #        format.json { render :show, status: :created, location: @genetic_bank_picture }
    #      else
    #        format.html { render :new }
    #        format.json { render json: @genetic_bank_picture.errors, status: :unprocessable_entity }
    #      end
    #    end
    #  end
    #
    #  # PATCH/PUT /genetic_bank_pictures/1
    #  # PATCH/PUT /genetic_bank_pictures/1.json
    #  def update
    #    respond_to do |format|
    #      if @genetic_bank_picture.update(genetic_bank_picture_params)
    #        format.html { redirect_to @genetic_bank_picture, notice: 'Genetic bank picture was successfully updated.' }
    #        format.json { render :show, status: :ok, location: @genetic_bank_picture }
    #      else
    #        format.html { render :edit }
    #        format.json { render json: @genetic_bank_picture.errors, status: :unprocessable_entity }
    #      end
    #    end
    #  end
    #
    #  # DELETE /genetic_bank_pictures/1
    #  # DELETE /genetic_bank_pictures/1.json
    #  def destroy
    #    @genetic_bank_picture.destroy
    #    respond_to do |format|
    #      format.html { redirect_to genetic_bank_pictures_url, notice: 'Genetic bank picture was successfully destroyed.' }
    #      format.json { head :no_content }
    #    end
    #  end
    #
    #  private
    #    # Use callbacks to share common setup or constraints between actions.
    #    def set_genetic_bank_picture
    #      @genetic_bank_picture = GeneticBankPicture.find(params[:id])
    #    end
    #

    def create
        @genetic_bank = GeneticBank.find(params[:genetic_bank_id])
        @picture = @genetic_bank.genetic_bank_pictures.create(genetic_bank_picture_params)
        #        redirect_to genetic_bank_path(@genetic_bank)

        if params[:genetic_bank_picture]
            if @picture.save
                redirect_to genetic_bank_path(@genetic_bank), notice: 'Picture uploaded.'
            else
                @picture.errors.delete(:picture)
                render :new
            end
        else
            redirect_to genetic_bank_path(@genetic_bank), alert: 'Picture cannot be blank.'
        end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    #    private
    def genetic_bank_picture_params
        params.require(:genetic_bank_picture).permit(:picture) if params[:genetic_bank_picture]
    end
end
