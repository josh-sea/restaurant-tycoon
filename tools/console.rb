require_relative '../config/environment.rb'


l1 = Location.new("NY", 1000)
l2 = Location.new("LA", 1500)
l3 = Location.new("China", 2000)
l5 = Location.new("Paris", 2500)


r1 = Restaurant.new("Josh's", [l1,l2])
r2 = Restaurant.new("Ashley's Cafe", [l1,l2,l3,l5])
r3 = Restaurant.new("JimBob's", [l5,l3])

binding.pry

# Pry.start
