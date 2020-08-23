class BikesFilterController < ApplicationController
  def index
    @bikes = Bike.where(nil)
    filtering_params(params).each do |key, value|
      @bikes = @bikes.public_send(key, value) if value.present?
    end
  end

  private

  def filtering_params(params)
    params.slice(:brand, :status)
  end

end
