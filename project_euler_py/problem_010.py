"""The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

import sympy

answer = sum([i for i in sympy.sieve.primerange(1, 2000000)])

print(answer)

# Answer = 142913828922
# Time: 0m1.135
