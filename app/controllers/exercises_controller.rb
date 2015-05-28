class ExercisesController < ApplicationController
   
   def database
      @exercises = Exercise.paginate(page: params[:page], :per_page => '10')
      @exerciseCount = Exercise.count
   end
   
    
   def show
      #This corresponds to show.html.erb and allows the form to select from the model (database) items to be shown
   
      #select the exercises
      @exerciseOptions = Exercise.pluck(:description, :id) 
      
   
      #select the food and limit it to 5 itmes
      @foodOptions = Food.limit(5).pluck(:name, :id)
   end
    
   def results
      #Find by id from the results form 
      
      #convert the weight from the results form to kilograms
      @weightResult = params[:results][:weight].to_i / 2.2046 
      
      #select the exercise from the results drop down and convert it to an integer
      @exerciseResult = Exercise.find_by_id(params[:results][:exercise].to_i) 
      @foodResult = Food.find_by_id(params[:results][:food].to_i) 
      
      #calculate the math formula below
      
      #Formula: MET Value x 3.5 x body weight (kg) / 200 = calories burned per minute
      @calc = ((@exerciseResult.met * 3.5 * @weightResult) / 200).to_f
      #calculate the minutes it would take to burn off the food item and round it up to nearest whole number
      @minutes = (@foodResult.calories / @calc).round
            
   end

end
