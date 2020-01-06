# An irrational decimal fraction is created by concatenating the positive integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, find the value of the following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000


count = 1
frac = ''

while frac.length < 1_000_000 do
  frac << count.to_s
  count += 1
end

frac = frac.split('').map(&:to_i)

puts frac[0] * frac[99] * frac[999] * frac[9999] * frac[99_999] * frac[999_999]

# Complete!
# Answer = 210
