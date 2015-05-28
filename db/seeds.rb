# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv' 

food_list = [
    ["Orange", 45],
   ["Apple", 95],
    ["Doughnut", 195]
]

food_list.each do |name, calories|
    Food.create(name: name, calories: calories)
end

#exercise_list = [
 #   ["Running, 6.0 mph", 9.8],
#    ["Walking, 3.5 mph", 4.3],
 #   ["Meditating", 1.0]
 #   ]
    
#    exercise_list.each do |name, met|
#        Exercise.create(name: name, met: met)
#    end
    
   
#CSV.foreach("/home/ubuntu/just-freaking-work/lib/data/file.csv", 
#{ encoding: "UTF-8", 
#    headers:            true, 
#    header_converters: :symbol, 
#    converters:     :all,
#    :row_sep => :auto,
#    :col_sep => :auto}) do |row|
        
#   category, met, description = row #bring all the stuff out of the csv file so the database will know what to accept
#    Exercise.create(category: category, met: met, description: description)

file_path = "/home/ubuntu/just-freaking-work/lib/data/file.csv" 
    CSV.foreach(file_path, :headers => true, :col_sep => ',') do |row|
  Exercise.create(:category => row['category'], :description => row['description'], :met => row['met'])
   
end 



