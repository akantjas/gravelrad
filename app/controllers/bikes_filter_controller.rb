class BikesFilterController < ApplicationController
  def index
    @bikes = Bike.where(brand: params[:brands], brake_type: params[:brake_types]).order(:brand)
  end
end
