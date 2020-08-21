class BikesController < ApplicationController
    before_action :set_bike, only: [:show, :edit, :update, :destroy] 
    # before_action :authenticate_user!, except: [:index, :show] 

    def index
        if params[:query].present?
            @bikes = Bike.search(params[:query])
        else
            @bikes = Bike.all   
        end
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
        params.require(:bike).permit(
            :name,
            :brand, 
            :description, 
            :weight,
            :weight_capacity,
            :price,
            :status,
            :frame,
            :fork,
            :tire_max_width,
            :equipment,
            :front_speeds,
            :cassette_speeds,
            :brake,
            :brake_type,
            :handlebar,
            :handlebar_type,
            :seat,
            :wheel_rims,
            :wheel_hubs,
            :wheel_tires, 
            :lights,
            :fenders, 
            :rack,
            :photo)
    end
end