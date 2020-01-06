"""A googol (10**100) is a massive number: one followed by one-hundred zeros;
100***100 is almost unimaginably large: one followed by two-hundred zeros. 
Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, a**b, where a, b < 100, 
what is the maximum digital sum?
"""

from commons import digits

answer = 0  # answer = maximum digital sum.

for a in range(1, 101):
    for b in range(1, a):
        digital_sum = sum(digits(a**b))
        if digital_sum > answer:
            answer = digital_sum

print(answer)

# Answer: 972
# Time: 0m0.100
