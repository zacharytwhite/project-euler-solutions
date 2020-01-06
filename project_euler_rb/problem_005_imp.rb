# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def is_divisible(num)
  11.upto(20).all? { |i| num % i == 0 }
end
  
  x = nil
  i = 2520
  
until x
  x = i if is_divisible(i)
  i += 2520  # i increments by 2520 since we already know that 2520 is divisible by (1..10), meaning we only have to test for (11..20)
end

puts "Answer: #{x}"

# Complete!
# Answer = 232792560
