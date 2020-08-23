class BikesFilterController < ApplicationController
  def index
    @bikes = Bike.brand(params[:brands]).status(params[:status])
  end
end
