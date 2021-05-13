class PlantsController < ApplicationController

    def show
        @plant = Plant.find(params[:id])
        @plant_tag = PlantTag.new
        @used_tags_id = @plant.tags.pluck(:id)
        @free_tags = Tag.where.not(id: @used_tags_id)

    end


    def create
        # initiate a new plant
        @plant = Plant.new(plant_params)
        # find the garden based on params[:garden_id]
        @garden = Garden.find(params[:garden_id])
        # match plant and garden
        @plant.garden = @garden
        # save the plant
        if @plant.save
            flash[:success] = "#{@plant.name} had been added to the garden"
            redirect_to @garden
        # get back to garden page
        else
            flash[:alert] = "Sorry, something went wrong. Please check the errors"
            render "gardens/show"
        end
    end

    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        flash[:success] = "#{@plant.name} had been removed from the garden"
        redirect_to @plant.garden
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :image_url)
    end

end
