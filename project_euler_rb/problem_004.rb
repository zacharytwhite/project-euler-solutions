# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

max_palin = 0
999.downto(100) do |i|
  i.downto(100) do |j|
    sum = i * j
    max_palin = [sum, max_palin].max if sum.to_s == sum.to_s.reverse
  end
end

puts max_palin

# Complete!
# Answer = 906609
