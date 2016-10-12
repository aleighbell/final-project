class SessionsController < ApplicationController

  def new
  end

  def create
    # venue = Venue.authenticate(params[:email], params[:password])
    # origionally in create
    # band = Band.authenticate(params[:email], params[:password])
    # if band
    #   session[:band_id] = band.id
    #   redirect_to root_url, :notice => "Logged in!"
    # else
    #   flash.now.alert = "Invalid email or password"
    #   render "new"
    # end

    user = User.authenticate(params[:email], params[:password])
    # raise 'hell'
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
      puts"**********************SUCCESS"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
        puts"**********************FAIL"
    end


  end


    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Logged out!"
    end









end
