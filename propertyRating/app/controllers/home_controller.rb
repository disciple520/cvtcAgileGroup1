class HomeController < ApplicationController
  def index
    @properties = Property.select(:address, :apt)
    @properties = Property.joins(:reviews).order("reviews.created_at DESC").group("properties.address").limit(10)
    @properties.last 
  end
  
  def about
  end
  
end
