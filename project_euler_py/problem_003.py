"""The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""
import sympy

N = 600851475143
divs = []
i = 1
while i*i <= N:
    if N % i == 0 and sympy.isprime(i):
        divs.append(i)
    i += 1

print(divs[-1])

# Answer: 6857
# Time: 
