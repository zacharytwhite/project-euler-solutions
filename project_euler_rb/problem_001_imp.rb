# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3s_and_5s
  (1...1000).select do |num|
    num % 3 == 0 || num % 5 == 0
  end
end

sum = multiples_of_3s_and_5s.sum

puts "Answer: #{sum}"

# Complete!
# Answer = 233168
