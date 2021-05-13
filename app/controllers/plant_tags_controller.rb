class PlantTagsController < ApplicationController

    def create
        @plant = Plant.find(params[:plant_id])
        params[:plant_tag][:tag][1..-1].each do |tag_id|
            PlantTag.create(tag_id: tag_id, plant: @plant)
        end
        redirect_to @plant
    end

    def destroy 
        @plant_tag = PlantTag.find(params[:id])
        @plant_tag.destroy
        redirect_to @plant_tag.plant
    end

    private

    def plant_tag_params
        params.require(:plant_tag).permit(:tag_id)
    end

end
