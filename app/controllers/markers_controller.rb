class MarkersController < ApplicationController
    def index
        markers = Marker.all
        render json: markers
    end

    def show
        marker = Marker.find_by(id: params[:id])
        render json: marker
    end

    def create
        marker = Marker.new(marker_params)
        if marker.valid?
            marker.save       
            render json: marker
        else
            render json: {errors: "Please provide a name and a category to place a marker."}, status: :unprocessable_entity
        end
    end

    def destroy
        marker = Marker.find_by(id: params[:id])
        marker.destroy
        head :no_content
    end

    def update
        marker = Marker.find_by(id: params[:id])
        marker.update(marker_params)
        render json: marker
    end

    private

    def marker_params
        params.permit(:user_id, :visited, :user_rating, :urgency, :category, :latitude, :longitude, :name, :image)
    end
end
