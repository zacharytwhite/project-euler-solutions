# Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,
# where each “_” is a single digit.


min = (1020304050607080900**0.5).round  # = smallest number that could have the form 1_2_3_4_5_6_7_8_9_0
max = (1929394959697989990**0.5).round  # = largest number that could have the form 1_2_3_4_5_6_7_8_9_0
i = min
loop do
  break if !!((i**2).to_s =~ /1.2.3.4.5.6.7.8.9.0/)
  i += 10   # += 10 because the reuslt must be divisible by 10
end

puts "Answer: #{i}"