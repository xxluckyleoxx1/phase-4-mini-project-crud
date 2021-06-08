class SpicesController < ApplicationController

    def index
        spices = Spice.all 
        render json: spices
    end

    def create
        spice = Spice.create(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice, status: :created
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        render json: spice
    end
  

end
