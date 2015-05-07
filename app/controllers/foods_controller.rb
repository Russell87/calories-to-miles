class FoodsController < ApplicationController
  def new
  end
  
  def show
    #corresponds magically to show.html.erb??
    @food = Food.all
  end
  
end
