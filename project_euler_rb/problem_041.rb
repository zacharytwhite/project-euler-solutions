# We shall say that an n-digit number is pandigital 
# if it makes use of all the digits 1 to n exactly once. 

# For example, 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital prime that exists?

require 'prime'


puts 1.upto(9).
  map {|n|
    1.upto(n).
      map(&:to_s).
      permutation.
      map(&:join).
      map(&:to_i).
      select(&:prime?)
  }.
  flatten.
  max


# Complete!
# Answer = 7652413
