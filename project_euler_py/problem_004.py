"""A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers
is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

palindromes = []
for i in range(100, 999):
    for j in range(100, 999):
        test = i * j
        if str(test) == str(test)[::-1]:
            palindromes.append(test)

answer = sorted(palindromes)[-1]

print(answer)

# Answer = 906609
# Time: 0m0.630s
