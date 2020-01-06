# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

a = (1..1000).map do |x|
  x = x**x
end

puts a.sum.to_s.split('').last(10).join

# Complete!
# Answer = 9110846700
