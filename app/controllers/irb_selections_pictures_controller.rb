class IrbSelectionsPicturesController < ApplicationController
    def create
        @irb_selections = IrbSelection.find(params[:irb_selection_id])
        @picture = @irb_selections.irb_selections_pictures.create(irb_selections_picture_params)
        #        redirect_to irb_selections_path(@irb_selections)

        if params[:irb_selections_picture]
            if @picture.save
                redirect_to irb_selection_path(@irb_selections), notice: 'Picture uploaded.'
            else
                @picture.errors.delete(:picture)
                render :new
            end
        else
            redirect_to irb_selection_path(@irb_selections), alert: 'Picture cannot be blank.'
        end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    #    private
    def irb_selections_picture_params
        params.require(:irb_selections_picture).permit(:picture) if params[:irb_selections_picture]
    end
end
