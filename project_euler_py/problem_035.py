"""The number, 197, is called a circular prime because all rotations
of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100:
2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?
"""

import sympy
import commons

def shifter(n):
    length = len(str(n))

    num = [d for d in str(n)]

    for _ in range(0, length):
        first = num.pop(0)
        num.append(first)
        new = int(''.join(num))
        yield new

count = 0
for i in range(1, 1000000):
    if all(sympy.isprime(n) for n in shifter(i)): count += 1

print(count)

# Answer: 55
# Time: 0m8.100s
