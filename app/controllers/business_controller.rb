class BusinessController < ApplicationController

  def index
    @business = Business.all
    @business = Business.order("business_name").page(params[:page]).per(10)

  end

  def contact_us

  end

  def business_params
    params.require(:band).permit(:category_id, :business_name, :business_address, :city_id, :latitude, :longtitude)
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
    @business = Business.new(favourite_params)
    @city = City.new(:city_name => 'qqq'  )

    @category = Category.new(:category_name => 'qqq'  )
    @user = User.new(:name => 'insert name'  )
  @business.save
  @city.save
  @category.save
  @user.save
  end

 end
