# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

require_relative 'commons'

limit = 50_000  # found by trial & error

puts 3.upto(limit).select { |n|
  n == n.digits.map{|d| factorial(d)}.sum
}.sum

# Complete!
# Answer = 40730