# List of methods I've used most commonly in Project Euler problems

require 'prime'

def divisors(n)
  (1..n/2).select do |num|
    n % num == 0
  end
end

def prime_factors(n)
  (1..n/2).select(&:prime?).select do |num|
    n % num == 0
  end
end

def factorial(n)
  return 1 if n == 0
  n.downto(1).inject(:*)
end


