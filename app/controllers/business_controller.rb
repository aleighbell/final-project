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
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(:business_name => 'qqq', :city_id => '2'  )
    @city = City.new(:city_name => 'qqq'  )
    @category = Category.new(:category_name => 'qqq'  )
    @user = User.new(:name => 'insert name'  )

  @business.save
  @city.save
  @category.save
  @user.save



  end

end
