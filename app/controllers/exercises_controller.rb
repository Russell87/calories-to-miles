class ExercisesController < ApplicationController
    
   def show
        @exerciseOptions = Exercise.pluck(:name, :id)
        @foodOptions = Food.limit(5).pluck(:name, :id)
   end
    
   def results
      @weightResult = params[:results][:weight]
      @exerciseResult = Exercise.find_by_id(params[:results][:exercise].to_i)
      @foodResult = Food.find_by_id(params[:results][:food].to_i)
      #do maths here 
      #@weightResult * @exterciseResult + @foodResult ete etc
   end
   
  
end
