"""The first two consecutive numbers to have two distinct prime factors are:

14 = 2 * 7
15 = 3 * 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2**2 * 7 * 23
645 = 3 * 5 * 43
646 = 2 * 17 * 19

Find the first four consecutive integers to have four distinct
prime factors each.  What is the first of these numbers?
"""

import sympy

i = 0
j = i+1
k = i+2
l = i+3
answer = 0

while answer == 0:

    if len(sympy.factorint(i)) == len(sympy.factorint(j)) == len(sympy.factorint(k)) == len(sympy.factorint(l)) == 4:
        answer = i
        print(answer)
        break

    i += 1
    j += 1
    k += 1
    l += 1

# Answer: 134043
# Time: 0m4.035