"""A Pythagorean triplet is a set of three natural numbers, a < b < c, 
for which a**2 + b**2 = c**2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

# Put into a function to allow return once triple is found.
def magic_triple():
    for c in range(1, 1000):
        for b in range(1, c):
            for a in range(1, b):
                if (a*a + b*b == c*c) and (a+b+c == 1000):
                    print(a*b*c)
                    return

magic_triple()

# Answer = 31875000
# Time: 0m1.876
