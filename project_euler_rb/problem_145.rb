# Some positive integers n have the property that the sum [ n + reverse(n) ] 
# consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. 
# We will call such numbers reversible; so 36, 63, 409, and 904 are reversible. 

# Leading zeroes are not allowed in either n or reverse(n).

# There are 120 reversible numbers below one-thousand.

# How many reversible numbers are there below one-billion (10**9)?


reversibles = []

1.upto(1_000_000_000) do |n|
  x = n + n.to_s.reverse.to_i
  #puts "#{n} -- #{x}"
  next false if n.to_s.reverse.start_with?('0') || n.to_s.start_with?('0') 
  if x.to_s.split('').map(&:to_i).all?(&:odd?)
    reversibles << n
  end
end

puts reversibles.length


# Complete!
# Answer = 608720
