class TripsController < ApplicationController
    def index
        trips = Trip.all
        render json: trips
    end

    def show
        trip = Trip.find_by(id: params[:id])
        render json: trip
    end

    def create
        trip = Trip.new(trip_params)
        trip.save
        render json: trip
    end

    def destroy
        trip = Trip.find_by(id: params[:id])
        trip.destroy
        head :no_content
    end

    def update
        trip = Trip.find_by(id: params[:id])
        trip.update(trip_params)
        render json: trip
    end

    private

    def trip_params
        params.permit(:user_id, :name, :completed, :description, :destinations)
    end
end
