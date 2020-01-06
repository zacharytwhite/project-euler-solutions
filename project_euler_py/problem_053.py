"""There are exactly ten ways of selecting three from five, 12345:

123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, 5.C.3 = 10

In general, nCr = n! / (r!(n−r)!
where r <= n, n! = n*(n−1)*...*3*2*1, and 0!=1

It is not until n = 23
that a value exceeds one-million: 23.C.10 = 1144066

How many, not necessarily distinct, values of nCr
for 1 ≤ n ≤ 100, are greater than one-million?
"""

from math import factorial

answer = 0
for n in range(1, 101):
    for r in range(1, n):
        if factorial(n) / (factorial(r) * (factorial(n-r))) > 1000000:
            answer += 1

print(answer)

# Answer: 4075
# Time: 0m0.035s
