class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password], params[:remember_me])
      flash[:success] = 'You are logged in!'
      #redirect_to root_path
      redirect_back_or_to root_path
    else
      flash.now[:warning] = 'E-mail and/or password is incorrect.'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'You are logged out!'
    redirect_to root_path
  end
end
