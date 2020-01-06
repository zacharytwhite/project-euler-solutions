"""The 5-digit number, 16807=7**5, is also a fifth power.
Similarly, the 9-digit number, 134217728 = 8**9, is a ninth power.

How many n-digit positive integers exist which are also an nth power?
"""

count = 0

for i in range(1, 10):
    power = 1
    while True:
        if power == len(str(i ** power)):
            count += 1
        else:
            break
        power += 1

print(count)

# Answer: 49
# Time: 0m0.025s
