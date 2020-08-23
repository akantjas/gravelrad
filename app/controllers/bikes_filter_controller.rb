class BikesFilterController < ApplicationController
  def index
    @bikes = Bike.where(brand: params[:brands]).order(:brand)
  end
end
