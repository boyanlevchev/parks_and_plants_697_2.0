class PlantTagsController < ApplicationController
  def new
    # To create plant tag we need to make instance of plant available for simple_form
    @plant = Plant.find(params[:plant_id])
    # we also initialize empty intance of plant_tag
    @plant_tag = PlantTag.new
  end


  def create
    @plant_tag = PlantTag.new(plant_tag_params)
    # this time new planttag with plant_tag_parameters
    @plant = Plant.find(params[:plant_id])

    # DON"T FORGET TO SET THE PLANT_TAG's PLANT_ID
    @plant_tag.plant = @plant
    @plant_tag.save! # save it
    redirect_to garden_path(@plant.garden) # redirect to garden
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
