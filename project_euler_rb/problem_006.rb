# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def sum_of_squares
  (1..100).map do |i|
    i*i
  end.sum
end

def square_of_sums
  (1..100).map do |i|
    i += 1
  end.sum**2
end

def difference
  square_of_sums - sum_of_squares
end

puts difference

# Complete!
# Answer = 25164150
