class BusinessesController < ApplicationController

  def index
    @business = Business.all
    @business = Business.order("business_name").page(params[:page]).per(10)

  end

  def test
    @user = User.new
  end

  def contact_us

  end

  def business_params
    params.require(:business).permit(:category_id, :business_name, :business_address, :city_id, :latitude, :longitude)
  end

  def business
  end

  def signup

  end

  def show
  end

  def new

    @businesses = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      redirect_to root_path
    else
      render :new
    end
  end

 end
