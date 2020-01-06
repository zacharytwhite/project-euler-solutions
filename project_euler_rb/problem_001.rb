# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_3s_and_5s
  a = []
  (1...1000).each do |num|
    if num % 3 == 0 || num % 5 == 0
      a << num
    end
  end
  a.sum.to_s
end

puts "Answer: #{sum_of_3s_and_5s}"

# Complete!
# Answer = 233168
