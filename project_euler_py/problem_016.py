"""2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?
"""

N = 2**1000
digits = [int(num) for num in str(N)]

answer = sum(digits)

print(answer)

# Answer = 1366
