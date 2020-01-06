"""We shall say that an n-digit number is pandigital if it makes use of all
the digits 1 to n exactly once; for example, the 5-digit number, 
15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254,
containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product 
identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to 
only include it once in your sum.
"""

import math

def is_pandigital(arr):
    string_num = ''.join(str(char) for char in arr)
    string_num = ''.join(sorted([char for char in string_num]))
    if string_num == '123456789': return True

def find_multiplicands(product, stack):
    for n in range(1, int(math.sqrt(product))):
        # Ensure product * n equals a whole number.
        if not product % n == 0: continue
        if is_pandigital([n, (product//n), product]):
            stack.append([n, (product//n), product])

pans = []
for i in range(1, 10000):
    find_multiplicands(i, pans)

# Casting list to set removes duplicate elements.
answer = sum(set([arr[-1] for arr in pans]))

print(answer)

# Answer = 45338
