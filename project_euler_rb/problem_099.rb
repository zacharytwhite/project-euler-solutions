# Comparing two numbers written in index form like 211 and 37 is not difficult, 
# as any calculator would confirm that 211 = 2048 < 37 = 2187.

# However, confirming that 632382^518061 > 519432^525806 would be much more difficult, 
# as both numbers contain over three million digits.

# Using base_exp.txt, a 22K text file containing one thousand lines with a base/exponent pair on each line, 
# determine which line number has the greatest numerical value.

# NOTE: The first two lines in the file represent the numbers in the example given above.



pairs = File.open('base_exp.txt', &:read).
split("\n").
map{ |line| line.split(',')}.
map{ |b, e| b.to_i**e.to_i }

puts pairs.index(pairs.max)+1

# Complete!
# Answer = 709
