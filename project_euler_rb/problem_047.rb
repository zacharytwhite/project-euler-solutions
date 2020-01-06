# The first two consecutive numbers to have two distinct prime factors are:

# 14 = 2 × 7
# 15 = 3 × 5

# The first three consecutive numbers to have three distinct prime factors are:

# 644 = 2^2 × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.

# Find the first four consecutive integers to have four distinct prime factors each. 
# What is the first of these numbers?


require 'prime'
require_relative 'commons.rb'


i = 0
j = 1
k = 2
l = 3

loop do

  if prime_factors(i).length == 4 && prime_factors(j).length == 4 && prime_factors(k).length == 4 && prime_factors(l).length == 4
    if prime_factors(i) != prime_factors(j)
      puts prime_factors(i).inspect
      puts prime_factors(j).inspect
      puts prime_factors(k).inspect
      puts prime_factors(l).inspect
      puts "i : #{i}, j : #{j}, k : #{k}, l : #{l}"
      puts "Answer : #{i}"
      break
    end
  end

  i+=1
  j+=1
  k+=1
  l+=1

end

# Complete!
# Answer = 134043