module ApplicationHelper

  def pageid
    "#{params[:controller]}-#{params[:action]}"
  end

end
