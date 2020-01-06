# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:

# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17

# Find the sum of all 0 to 9 pandigital numbers with this property.

pan = '0123456789'.split('')

success = pan.
  permutation.
  map(&:join).
  reject {|i| i.start_with?('0') }.
  select do |num|
    #puts num
    next false unless (num[1] + num[2] + num[3]).to_i % 2 == 0
    next false unless (num[2] + num[3] + num[4]).to_i % 3 == 0
    next false unless (num[3] + num[4] + num[5]).to_i % 5 == 0
    next false unless (num[4] + num[5] + num[6]).to_i % 7 == 0
    next false unless (num[5] + num[6] + num[7]).to_i % 11 == 0
    next false unless (num[6] + num[7] + num[8]).to_i % 13 == 0
    next false unless (num[7] + num[8] + num[9]).to_i % 17 == 0
    true
  end.map(&:to_i)

puts "#{success.join ' + '} = #{success.sum}"

# Complete!
# Answer = 16695334890