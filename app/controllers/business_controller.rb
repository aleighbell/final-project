class BusinessController < ApplicationController

  def index
      @business = Business.all
  end

  def contact_us
  end

  def business
  end

  def signup
  end

  def show

  end

  def new
    @business = Business.new
  end

  def create
    @business = business.new(business_params)

if @business.save
  redirect_to root_path
else
  render :new
end
  end


end
