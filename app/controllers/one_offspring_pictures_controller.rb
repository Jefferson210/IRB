class OneOffspringPicturesController < ApplicationController
    
    def create
        @one_offspring = OneOffspring.find(params[:one_offspring_id])
        @picture = @one_offspring.one_offspring_pictures.create(one_offspring_picture_params)
        #        redirect_to one_offspring_path(@one_offspring)

        if params[:one_offspring_picture]
            if @picture.save
                redirect_to one_offspring_path(@one_offspring), notice: 'Picture uploaded.'
            else
                @picture.errors.delete(:picture)
                render :new
            end
        else
            redirect_to one_offspring_path(@one_offspring), alert: 'Picture cannot be blank.'
        end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
#    private
    def one_offspring_picture_params
        params.require(:one_offspring_picture).permit(:picture) if params[:one_offspring_picture]
    end
end
