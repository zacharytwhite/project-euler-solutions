"""By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10,001st prime number?
"""

import sympy

answer = sympy.prime(10001)

print(answer)

# Answer: 104743
# Time: 0m0.545s