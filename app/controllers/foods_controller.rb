class FoodsController < ApplicationController
  require 'httparty'
  def new
  end
  
  def show
    #corresponds magically to show.html.erb??
    @food = Food.all #this is what it selects from the database so the html will show 
    @foodCount = Food.count
    
   # @response = HTTParty.get("http://api.nal.usda.gov/ndb/reports/?ndbno=01009&type=f&format=json&api_key=DEMO_KEY").parsed_response
    
  end
  
end
