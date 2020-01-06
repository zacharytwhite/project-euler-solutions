# A googol (10^100) is a massive number: one followed by one-hundred zeros; 
# 100^100 is almost unimaginably large: one followed by two-hundred zeros. 
# Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, a^b, where a, b < 100, what is the maximum digital sum?


expos = []

1.upto(100) do |x|
  1.upto(100) do |y|
    expos << y**x
  end
end


puts expos.map(&:to_s).map { |n|
  n.split('').map(&:to_i).sum
}.sort.max


# Complete!
# Answer = 972

# Imporvements: (1) combine lines 16-19 with 21