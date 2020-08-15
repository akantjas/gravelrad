class BikesController < ApplicationController
    before_action :set_bike, only: [:show, :edit, :update, :destroy] 

    def index
        @bikes = Bike.all
    end

    def compare
        @bikes = Bike.where(rating: 5)
    end 

    def show
    end

    def new
        @bike = Bike.new
    end

    def create
        @bike = Bike.new(bike_params)
        @bike.save
        redirect_to bike_path(@bike)
    end

    def edit
    end

    def update
        @bike.update(bike_params)
        redirect_to bike_path(@bike)
    end

    def destroy
        @bike.destroy
        redirect_to bikes_path
    end

    private
    def set_bike
        @bike = Bike.find(params[:id])
    end
    
    def bike_params
        params.require(:bike).permit(:name, :brand, :description, :status, :photo)
    end
end