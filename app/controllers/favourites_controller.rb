class FavouritesController < ApplicationController

def new
  @favourite = Favourite.new
  redirect_to create
end
  def create

    @favourite = Favourite.new(favourites_params)
    if @favourite.save
    puts "***********************"
    puts params[:user_id]
    puts params[:business_id]
    else
    flash.now[:alert] = 'failure to favourite'
    puts "failed to save"

  end
end

def update

end

def favourites_params
  puts params.inspect
  puts "----------------------------------------------------------------------------------------------------------"
  params.permit(:user_id, :business_id)
end

def destroy
  Favorite.find(params[:id]).destroy
     flash[:success] = "User deleted"
end


end
