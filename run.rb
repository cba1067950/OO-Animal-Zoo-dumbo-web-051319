require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
animal1 = Animal.new("rhino", 1000, "Nosey")
animal2 = Animal.new("rhino", 1043, "unamed creature of God")
animal3 = Animal.new("cat", 8000, "Meowth")
bronx_zoo = Zoo.new("Bronx Zoo", "NYC")
savannah = Zoo.new("African Savannah", "Africa")
central_park_zoo = Zoo.new("Central Park Zoo", "NYC")

animal1.zoo = (bronx_zoo)
animal2.zoo = (savannah)
animal3.zoo = (bronx_zoo)

binding.pry
puts "done"
