class PlantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    def index 
        # plants = Plant.all
        # render json: plants
        render json: Plant.all, status: :ok
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant, status: :accepted
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private
    def plant_params
        params.permit(:image, :name, :price)
    end

    def not_found
        render json: {error: "Plant not found"}
    end
end
