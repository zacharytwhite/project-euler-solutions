"""We shall say that an n-digit number is pandigital if it makes use of all
the digits 1 to n exactly once.

For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?
"""

import sympy
import itertools
import commons

# List of lists containing n-digit pandigital sequences from n = 1 to n = 9.
pans = []
for i in range(1, 10):
    for j in range(1, i):
        pans.append([str(x) for x in range(1, j+2)])

# Remove duplicate terms from 'pans'.
pans = commons.distinct(pans)

# Create 2D list of permutations for each n-length pandigital,
# then change each sub-list into an integer.
perms = []
for outer in pans:
    perm_array = itertools.permutations(outer)
    for inner in perm_array:
        perms.append(int(''.join(inner)))

# Find the maximum prime in final_perms list.
answer = max(filter(lambda x: sympy.isprime(x), perms))

print(answer)

# Answer: 7652413
# Time: 0m1.600s
