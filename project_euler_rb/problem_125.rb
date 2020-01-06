# The palindromic number 595 is interesting because it can be written as the sum of consecutive squares: 
# 6**2 + 7**2 + 8**2 + 9**2 + 10**2 + 11**2 + 12**2.

# There are exactly eleven palindromes below one-thousand that can be written as consecutive square sums, 
# and the sum of these palindromes is 4164. 
# Note that 1 = 0**2 + 1**2 has not been included as this problem is concerned with the squares of positive integers.

# Find the sum of all the numbers less than 10**8 that are both palindromic and 
# can be written as the sum of consecutive squares.

palins = []

lim = 10**8
max = lim**0.5

1.upto(max) do |i|
  squares = []
  squares << i**2
  
  (i+1).upto(max) do |j|
    squares << j**2
    sum = squares.sum
    
    if sum.to_s == sum.to_s.reverse
      palins << sum
      next
    end

    break if sum > lim
  end
end

puts palins.uniq.sum

# Complete!
# Answer = 2906969179