class ExercisesController < ApplicationController
    
   def show
       # @exercise = Exercise.new - do I need this?? 
       #In the show.html.erb file which has the form, this is needed to select the variables and push them to the next page
       #it corresponds to that form - it's finding by id <--- important
   @exerciseOptions = Exercise.pluck(:name, :id) 
   @foodOptions = Food.limit(5).pluck(:name, :id)
   end
    
   def results
      
      #find everything by ID!!! 
      @weightResult = params[:results][:weight] #shows weight!! params is the form it came from and weight is the variable
      @exerciseResult = Exercise.find_by_id(params[:results][:exercise].to_i) #this might need to be met not exercise
      @foodResult = Food.find_by_id(params[:results][:food].to_i) #this also might need to be changed to calories
      
      #math calcs here
      @weightResult * @exterciseResult + @foodResult ete etc
   end
   
  
end
