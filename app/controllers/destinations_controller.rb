class DestinationsController < ApplicationController
    def index
        destinations = Destination.all
        render json: destinations
    end

    def show
        destination = Destination.find_by(id: params[:id])
        render json: destination
    end

    def create
        destination = Destination.new(destination_params)
        destination.save
        render json: destination
    end

    def destroy
        destination = Destination.find_by(id: params[:id])
        destination.destroy
        head :no_content
    end

    private

    def destination_params
        params.permit(:trip_id, :marker_id)
    end
end
