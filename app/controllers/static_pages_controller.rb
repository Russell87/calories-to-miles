class StaticPagesController < ApplicationController
  def homepage
    

  end
  
  def results
    
    @result = params[:answer][:answer1].to_i * 5
    
  end
  
end
