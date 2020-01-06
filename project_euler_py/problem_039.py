"""If p is the perimeter of a right angle triangle with integral length sides,
{a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?
"""

p_s = [0 for x in range(1001)]

# For complicated math reasons, for a right triangle with a
# perimeter less than 1000, its hypotenuse (c) must be
# less than approximately 500.
for c in range(1, 500):
    for b in range(1, c):
        for a in range(1, b):
            p = a + b + c
            if p > 1000: break
            if (a*a + b*b == c*c):
                p_s[p] += 1

print(p_s)
print(p_s.index(max(p_s)))

# Answer: 840
# Time: 0m6.725s
