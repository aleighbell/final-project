class BusinessController < ApplicationController

  def index

  #  if params[:search_address]
  #   @businesses = Business.near(params[:search_address])
  # elsif params[:latitude] && params[:longtitude]
  #    @businesses = Business.near([params[:latitude], params[:longtitude])
#   else
  #    @business = Business.all
#   end
#end

    @business = Business.all
    @business = Business.order("business_name").page(params[:page]).per(5)
   #
  #   if params[:search_address]
  #    @businesses = Business.near(params[:search_address])
  #  elsif params[:latitude] && params[:longtitude]
  #     @businesses = Business.near([params[:latitude], params[:longtitude])
  #  else
  #
  #   end
  end

  def contact_us
  end

  def business
  end

  def signup
  end

  def show

    @business = Business.find(params[:id])
#    @nearby_businesses = @business.nearbys

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

    def update
    end
end
