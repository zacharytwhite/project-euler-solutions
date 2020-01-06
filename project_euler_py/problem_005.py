"""2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by
all of the numbers from 1 to 20?
"""

def is_divisible(n):
    if (n % 11 == n % 12 == n % 13 == n % 14 == n % 15 == n % 16 == n % 17
         == n % 18 == n % 19 == n % 20 == 0):
        return True
    else:
        return False

i = 2520
x = None

while x == None:
    if is_divisible(i):
        x = i
    i += 2520
print(x)

# Answer: 232792560
# Time: 0m0.050s
