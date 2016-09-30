class PagesController < ApplicationController

  def index

  end

  def contact_us
    @contactus = Contactus.new
  end

  def contact_save
    @contactus = Contactus.new(contact_params)
    if @contactus.save
      redirect_to contact_us_url
    else
      render :contact_us
    end
  end

  def business
  end

  def signup
  end

  def show
  end

  private
  def contact_params
    params.permit(:firstname, :lastname, :email, :businessaddress, :businessname, :businessowner, :message)
  end
end
