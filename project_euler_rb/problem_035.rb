# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

require 'prime'

def shifter(num)
  num = num.to_s.split('')
  num.map do
    del = num[0]
    num.shift
    num << del
    num.join.to_i
  end
end

puts 1.upto(1_000_000).select { |x|
  shifter(x).all?(&:prime?)
}.length


# Complete!
# Answer = 55
