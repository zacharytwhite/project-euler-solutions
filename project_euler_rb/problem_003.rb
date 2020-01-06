# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'

biggun = 600851475143

def prime_factor(n, a=[])
  num = 1.upto(n).detect do |i|
      n % i == 0 && i.prime? 
  end
  if num
    a << num
    prime_factor(n/num, a)
  end
  a
end

puts "Answer: #{prime_factor(biggun).last}"

# Complete!
# Answer = 6857
