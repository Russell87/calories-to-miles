class FoodsController < ApplicationController
  def new
  end
  
  def show
    #corresponds magically to show.html.erb??
    @food = Food.all #this is what it selects from the database so the html will show 
    @foodCount = Food.count
  end
  
end
