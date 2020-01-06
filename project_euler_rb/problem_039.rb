# If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

ps = Hash.new(0)

# For complicated math reasons, for a right triangle with a
# perimeter less than 1000, its hypotenuse (c) must be
# less than approximately 500.
limit = 500

1.upto(limit) do |c|
  1.upto(c) do |b|
    1.upto(b) do |a|
      if (a*a + b*b == c*c)
        next unless a+b+c < 1000
        ps[a+b+c] += 1
      end
    end
  end
end

puts ps.max_by{ |k,v| v }[0]
# Complete!
# Answer = 840
