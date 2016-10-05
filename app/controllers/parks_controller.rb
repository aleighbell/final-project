class ParksController < ApplicationController
  def create
  @park = Park.create(park_params )
end

  def index
    @parks = Park.all
  end

  def new
    @park = Park.new
  end



private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def park_params
  params.require(:park).permit(:photo, :name, :description)
end
end
