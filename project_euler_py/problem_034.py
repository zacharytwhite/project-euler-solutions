"""145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of
the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.
"""

import math
import commons

MAX = 50000
total = 0

for i in range(3, MAX):
    sum_fac = sum(math.factorial(int(d)) for d in str(i))
    if i == sum_fac: total += i

print(total)

# Answer: 40730
# Time: 0m0.145s
