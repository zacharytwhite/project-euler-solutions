# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?


require_relative 'commons.rb'

gridsize = 20
puts factorial((gridsize * 2)) / (factorial(gridsize)**2)



# Complete
# Answer = 137846528820
