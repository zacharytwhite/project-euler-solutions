"""Surprisingly there are only three numbers that can be written as the
sum of fourth powers of their digits:

    1634 = 1**4 + 6**4 + 3**4 + 4**4
    8208 = 8**4 + 2**4 + 0**4 + 8**4
    9474 = 9**4 + 4**4 + 7**4 + 4**4

As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of
fifth powers of their digits.
"""

# Due to some complicated math stuff I don't understand, this number acts
# as the upper bound for this particular calculation.
N = 6*9**5

fifth_sums = []

for i in range(2, N):
    sum_digits = sum(int(n)**5 for n in str(i))
    if sum_digits == i: fifth_sums.append(i)

answer = sum(fifth_sums)

print(answer)

# Answer = 443839
