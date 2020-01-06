# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def is_divisible(num)
  1.upto(20).all? { |i| num % i == 0 }
end

x = nil
i = 1

until x
  x = i if is_divisible(i)
  i += 1
end

puts x

# Complete!
# Answer = 232792560
