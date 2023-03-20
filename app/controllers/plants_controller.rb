class PlantsController < ApplicationController
  #GET /plants route
  def index
    plants = Plant.all
    render json: plants
  end

    # GET /plants/:id routes

  def show

    plant = Plant.find(params[:id])
    render json: plant

  end

    #POST /plants route


  def create

    plant = Plant.create(plant_params)


    # if plant.save
    render json: plant, status: :created
    # else
    # render json: plant.errors, status: :unprocessable_entity
    # end

  end
#ensures only  specific attributes are assigned to the plant
  private
  def plant_params
    params.permit(:name, :image, :price)
  end


end
