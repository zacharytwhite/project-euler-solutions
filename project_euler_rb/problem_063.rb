# The 5-digit number, 16807=7**5, is also a fifth power. Similarly, the 9-digit number, 134217728=8**9, is a ninth power.

# How many n-digit positive integers exist which are also an nth power?

pows = []

1.upto(40) do |i|
  1.upto(40) do |j|
    pows << [(i**j), j, i] if j == (i**j).to_s.length
  end
end

puts pows.length

# Complete!
# Answer = 49