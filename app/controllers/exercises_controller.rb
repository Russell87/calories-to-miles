class ExercisesController < ApplicationController
    
   def show
       # @exercise = Exercise.new - do I need this?? 

   end
    
   def results
      @exercise = Exercise.find_by(params[:met])
      @selectedfood = Food.find_by(params[:name])
   end
   
  
end
