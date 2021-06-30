class AttractionsController < ApplicationController
    def index
        attractions = Attraction.all
        render json: attractions
    end

    def show
        attraction = Attraction.find_by(id: params[:id])
        render json: attraction
    end

    def create
        attraction = Attraction.new(attraction_params)
        attraction.save
        render json: attraction
    end

    def destroy
        attraction = Attraction.find_by(id: params[:id])
        attraction.destroy
        head :no_content
    end

    private

    def attraction_params
        params.permit(:name, :category, :latitude, :longitude)
    end
end
