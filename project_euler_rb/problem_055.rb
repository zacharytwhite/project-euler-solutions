# If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.

# Not all numbers produce palindromes so quickly. For example,

# 349 + 943 = 1292,
# 1292 + 2921 = 4213
# 4213 + 3124 = 7337

# That is, 349 took three iterations to arrive at a palindrome.

# Due to the theoretical nature of these numbers, and for the purpose of this problem, 
# we shall assume that a number is Lychrel until proven otherwise. 
# In addition you are given that for every number below ten-thousand, 
# it will either (i) become a palindrome in less than fifty iterations, or, 
# (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome.

# How many Lychrel numbers are there below ten-thousand?

nons = []
lychrels = []

1.upto(10_000).each do |n|

  x = n   # for logging orignal number
  i = 0

  50.times do |z|
    n = n + n.to_s.reverse.to_i
    i += 1   # i = count
    
    if n.to_s == n.to_s.reverse
      nons << "#{x}--#{i}--#{n}"
      break
    elsif z == 49
      lychrels << x
    end
    
  end
end

most = nons.
    map { |x| x.split('--').map(&:to_i) }.
    max_by { |x| x[1] }.join('--')

puts "Non-Lychrels : #{nons} \n\n"
puts "Lychrels : #{lychrels.inspect} \n\n"
puts "Most number of cycles : #{most.inspect}"

puts "Lychrels below 10,000: #{10_000 - nons.length}"


# Complete!
# Answer = 249
