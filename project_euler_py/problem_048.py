"""The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.
"""

num = 0
for n in range(1, 1001):
    num += (n**n)

answer = str(num)[-10:]

print(answer)

# Answer: 9110843700
# Time: 0m0.035s
