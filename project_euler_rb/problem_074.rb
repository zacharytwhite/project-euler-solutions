# The number 145 is well known for the property that the sum of the factorial of its digits is equal to 145:

# 1! + 4! + 5! = 1 + 24 + 120 = 145

# Perhaps less well known is 169, in that it produces the longest chain of numbers that link back to 169; 
# it turns out that there are only three such loops that exist:

# 169 → 363601 → 1454 → 169
# 871 → 45361 → 871
# 872 → 45362 → 872

# It is not difficult to prove that EVERY starting number will eventually get stuck in a loop. For example,

# 69 → 363600 → 1454 → 169 → 363601 (→ 1454)
# 78 → 45360 → 871 → 45361 (→ 871)
# 540 → 145 (→ 145)

# Starting with 69 produces a chain of five non-repeating terms, 
# but the longest non-repeating chain with a starting number below one million is sixty terms.

# How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?

require_relative 'commons.rb'

tests = []
has_60 = []
calcs = Hash.new
factorials = [
  factorial(0),
  factorial(1),
  factorial(2),
  factorial(3),
  factorial(4),
  factorial(5),
  factorial(6),
  factorial(7),
  factorial(8),
  factorial(9),
]

1.upto(1_000_000) do |n|
  puts n
  60.times do
    x = n
    if cached = calcs[n.to_s[1..-1].to_i]
      x = factorials[n.to_s[0].to_i] + cached
      
    else
      x = n.
      to_s.
      split('').
      map { |d| factorials[d.to_i] }.
      sum
      calcs[n] = x
    end

    tests << x

    n = x
  end
  
  if tests.length == tests.uniq.length
    has_60 << tests
  end

end

puts has_60.inspect
puts has_60.length


# Answer = 402
