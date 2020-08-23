class BikesFilterController < ApplicationController
  def index
    @bikes = Bike.brandfilter(params[:brands])
  end
end
