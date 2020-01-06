"""The arithmetic sequence, 1487, 4817, 8147, in which each of the terms
increases by 3330, is unusual in two ways: 

    (i) each of the three terms are prime,
    (ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes,
exhibiting this property, but there is one other 4-digit increasing sequence.

What 12-digit number do you form by concatenating
the three terms in this sequence?
"""

from sympy import isprime
from commons import getDigits

answer = ''
for i in range(1000, 10000):
    if i == 1487: continue
    j = i + 3330
    k = j + 3330
    if isprime(i) and isprime(j) and isprime(k):
        if sorted(getDigits(i)) == sorted(getDigits(j)) == sorted(getDigits(k)):
            answer = str(i) + str(j) + str(k)
            break

print(answer)

# Answer: 296962999629
# Time: 0m0.500s
