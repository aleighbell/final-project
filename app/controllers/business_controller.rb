class BusinessController < ApplicationController

  def index
    if params[:search_address]
     @businesses = Business.near(params[:search_address])
   elsif params[:latitude] && params[:longtitude]
      @businesses = Business.near([params[:latitude], params[:longtitude])
   else
      @business = Business.all
<<<<<<< HEAD
   end
end
=======
      @business = Business.order("business_name").page(params[:page]).per(5)

  end
>>>>>>> a13764c5c1231f9fa29eb755bb2472d8174eb319

  def contact_us
  end

  def business
  end

  def signup
  end

  def show
<<<<<<< HEAD
    @business = Business.find(params[:id])
#    @nearby_businesses = @business.nearbys
=======

    @business_find = Business.find(params[:id])

>>>>>>> a13764c5c1231f9fa29eb755bb2472d8174eb319
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(:business_name => 'qqq', :city_id => '2'  )
    @city = City.new(:city => 'qqq'  )
    @category = Category.new(:category_name => 'qqq'  )
    @user = User.new(:name => 'insert name'  )

  @business.save
  @city.save
  @category.save
  @user.save

  end

end
