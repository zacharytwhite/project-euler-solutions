# A number chain is created by continuously adding the square of the digits in a number 
# to form a new number until it has been seen before.

# For example,

# 44 → 32 → 13 → 10 → 1 → 1
# 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

# Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. 
# What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

# How many starting numbers below ten million will arrive at 89?


fins = []

1.upto(10_000_000) do |n|
  puts n
  loop do
    n = n.
    to_s.
    split('').
    map(&:to_i).
    map { |d| d**2 }.
    sum
    
    if n == 89
      fins << n
      break
    elsif
      n == 1
      break
    end
    
  end
end

puts fins.length

# Complete! 
# Answer = 8581146