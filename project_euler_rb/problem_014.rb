#The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def chainer(n)
  arr = [n]
  while arr.last != 1 do
    x = arr.last
    x.even? ? (arr << x/2) : (arr << (3*x) + 1)
  end
  arr
end

def chains_for(x)
  1.upto(x).inject([]) do |chains, n|
    chains << chainer(n)
  end
end

max_num = 999_999
longest_chain = chains_for(max_num).sort_by(&:count).last

puts longest_chain.first


# Complete
# Answer = 837799
