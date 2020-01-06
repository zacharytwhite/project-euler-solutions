# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

a = 1.upto(1_000_000).select do |num|
  next if num.to_s(2).start_with?('0')
  num.to_s == num.to_s.reverse && num.to_s(2) == num.to_s(2).reverse
end

puts "Answer: #{a.sum}"

# Complete!
# Answer = 872187
