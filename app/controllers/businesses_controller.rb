class BusinessesController < ApplicationController
  
  def index
    @busin = Business.all
  end
  
end
