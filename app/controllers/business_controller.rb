class BusinessController < ApplicationController

  def index
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
    @business = Business.new(favourite_params)
    @city = City.new(:city_name => 'qqq'  )

    @category = Category.new(:category_name => 'qqq'  )
    @user = User.new(:name => 'insert name'  )
  @business.save
  @city.save
  @category.save
  @user.save
 end
