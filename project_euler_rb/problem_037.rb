# The number 3797 has an interesting property. Being prime itself,
# it is possible to continuously remove digits from left to right,
# and remain prime at each stage: 3797, 797, 97, and 7.
# Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

require 'prime'

def trunc_first(int)
  int = int.to_s
  1.upto(int.length-1).map { |i| int[i..-1].to_i }
end

def trunc_last(int)
  int = int.to_s
  1.upto(int.length-1).map { |i| int[0...i].to_i }
end

list = []

Prime.take_while do |x|
  if x > 10
    if [*trunc_first(x), *trunc_last(x)].all?(&:prime?)
      list << x
    end
  end
  list.length < 11
end

puts list.inspect
puts list.sum

# Complete
# Answer = 748317

