"""The number 585, 1001001001 in binary, is palindromic in both bases.

Find the sum of all numbers, less than one million,
which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base,
may not include leading zeros.)
"""

import commons

answer = 0
for i in range(1, 1000000):
    b_i = int(bin(i)[2:])
    if commons.is_palindrome(i) and commons.is_palindrome(b_i):
        answer += i

print(answer)

# Answer: 872187
# Time: 0m1.830s
