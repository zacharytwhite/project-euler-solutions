# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

sum = (1..2000000).select { |n|
  n.prime?
}.sum

puts sum

# Complete!
# Answer = 142913828922
