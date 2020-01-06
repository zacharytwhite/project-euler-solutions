# The Fibonacci sequence is defined by the recurrence relation:

# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# It turns out that F541, which contains 113 digits, is the first Fibonacci number
# for which the last nine digits are 1-9 pandigital (contain all the digits 1 to 9, but not necessarily in order). 
# And F2749, which contains 575 digits, is the first Fibonacci number for which the first nine digits are 1-9 pandigital.

# Given that Fk is the first Fibonacci number for which the first nine digits AND 
# the last nine digits are 1-9 pandigital, find k.


pan = %w{ 1 2 3 4 5 6 7 8 9 }

fibs = [1]

i = 0
j = 1
count = 1

loop do
  i, j = j, i+j
  x = j.to_s.split('').last(9).join
  y = j.to_s.split('').first(9).join
  if pan.all? { |d| x.include?(d)} && pan.all? { |d| y.include?(d)}
    puts "I would print the number here but it tends to crash my IDE."
    puts "(Just for fun) Length of number : #{j.to_s.length}"
    puts "Index : F-#{count}"
    break
  end
  count += 1
end


# Complete 
# Answer = 329468
