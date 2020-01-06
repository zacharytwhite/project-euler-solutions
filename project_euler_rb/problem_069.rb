# Euler's Totient function, φ(n) [sometimes called the phi function], is used to determine the number of 
# numbers less than n which are relatively prime to n. 
# For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, φ(9)=6.

# It can be seen that n=6 produces a maximum n/wφ(n) for n ≤ 10.

# Find the value of n ≤ 1,000,000 for which n/φ(n) is a maximum.

def divisors(n)
  (1..n).select do |num|
  n % num == 0
  end
end

def greatest_n_over_phi(lim)
  max = 0
  3.upto(lim).map do |num|
    puts num
    div = divisors(num)
    phi = 1.upto(num-1).select { |x| (div & divisors(x)) == [1] }.length  # number of coprimes less than num
    n_phi = (num/phi.to_f).round(4)
    #puts "num: #{num} -- phi: #{phi} -- n/phi: #{n_phi}"
    n_phi
  end
end

puts greatest_n_over_phi(10000).each_with_index.max[1] + 3   # + 3 undoes the offset above 