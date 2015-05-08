# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

food_list = [
    ["Orange", 45],
    ["Apple", 95],
    ["Doughnut", 195]
]

food_list.each do |name, calories|
    Food.create(name: name, calories: calories)
end
