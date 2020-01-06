# For any N, let f(N) be the last five digits before the trailing zeroes in N!.
# For example,

# 9! = 362880 so f(9) = 36288
# 10! = 3628800 so f(10) = 36288
# 20! = 2432902008176640000 so f(20) = 17664

# Find f(1,000,000,000,000)


def factorial(n)
  return 1 if n == 0
  n.downto(1).inject do |total, n|
    total = (total * n).to_s
    total[0..total.rindex(/[1-9]/)].to_i
  end
end

starting_time = Time.now

biggun = factorial(1_000_000_000_000).to_s

puts "You made it (halfway)! #{starting_time - Time.now}"

puts "Aaaaand you made it the rest of the way! #{starting_time - Time.now}"
puts biggun[-5..-1]
